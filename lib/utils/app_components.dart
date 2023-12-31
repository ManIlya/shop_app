import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:shop/data/remote/catalog_service.dart';
import 'package:shop/data/repository/token_repository.dart';
import 'package:shop/data/repository/interseptor.dart';
import 'package:shop/data/remote/auth_service.dart';
import 'package:shop/data/remote/cart_service.dart';
import 'package:shop/data/repository/cart_use_case.dart';

const timeout = Duration(seconds: 30);

class AppComponents {
  static final AppComponents _instance = AppComponents._internal();

  factory AppComponents() => _instance;

  AppComponents._internal();

  final tokenDaData = '6cbb9f2ecf9886a6f52e1bfb7c78ef3e8e05a9ed';
  final Dio dio = Dio();
  final TokenRepository tokenRepository = EncryptedTokenRepository();
  late final AuthService authService = AuthService(dio);
  late final CartService _cartService = CartService(dio);
  late final CatalogService catalogService = CatalogService(dio);
  late final CartUseCase cartUseCase = CartUseCase(_cartService);

  Future<void> init() async {
    dio.options
      ..baseUrl = 'https://farm.fbtw.ru/'
      ..connectTimeout = timeout
      ..receiveTimeout = timeout
      ..headers['Content-Type'] = 'application/json'
      ..sendTimeout = timeout;
    //dio.interceptors.add(PrettyDioLogger());

    await tokenRepository.initTokens();

    dio.interceptors.add(
      TokenInterceptor(
        repository: tokenRepository,
        dio: dio,
      ),
    );

    dio.interceptors.add(PrettyDioLogger(
      requestBody: true,
    ));

    cartUseCase.init();
  }
}
