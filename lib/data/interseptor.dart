import 'package:dio/dio.dart';
import 'package:shop/data/dto/repository/token_repository.dart';

class TokenInterceptor extends QueuedInterceptor {
  final TokenRepository repository;
  final Dio _dio;

  TokenInterceptor({
    required this.repository,
    required dio,
  }) : _dio = dio;

  /// JWT token.
  String? get _accessToken => repository.accessToken;

  /// JWT refresh token.
  String? get _refreshToken => repository.refreshToken;

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    if (_accessToken != null) {
      options.headers['Authorization'] = 'Bearer $_accessToken';
    }

    return super.onRequest(options, handler);
  }

  @override
  Future<void> onError(
      DioException err, ErrorInterceptorHandler handler) async {
    if ((err.response?.statusCode == 403 || err.response?.statusCode == 401) &&
        err.requestOptions.path != '/auth/email/part1') {
      await _refresh();
      if (repository.auth) {
        final response = await _retry(err.requestOptions);
        handler.resolve(response);
      }
    }
    return super.onError(err, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    if (response.requestOptions.path == '/auth/email/part2') {
      repository.saveTokens(
        accessToken: response.data['access_token'],
        refreshToken: response.data['refresh_token'],
      );
    }

    super.onResponse(response, handler);
  }

  Future<void> _refresh() async {
    if (_refreshToken == null) {
      return;
    }

    try {
      final response = await _dio.post(
        '/auth/token/refresh',
        data: {
          'refresh_token': _refreshToken,
        },
      );

      if (response.statusCode == 201 || response.statusCode == 200) {
        repository.saveTokens(
          accessToken: response.data['access_token'],
          refreshToken: response.data['refresh_token'],
        );
      }
    } catch (e) {
      repository.deleteTokens();
    }
  }

  Future<Response<dynamic>> _retry(RequestOptions requestOptions) {
    final options = Options(
      method: requestOptions.method,
      headers: requestOptions.headers,
    );

    return _dio.request<dynamic>(
      requestOptions.path,
      data: requestOptions.data,
      queryParameters: requestOptions.queryParameters,
      options: options,
    );
  }
}
