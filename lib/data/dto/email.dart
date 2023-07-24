import 'package:freezed_annotation/freezed_annotation.dart';

part 'email.freezed.dart';

part 'email.g.dart';

@freezed
class EmailPart1Request with _$EmailPart1Request {
  const factory EmailPart1Request({
    required String email,
    int? digits,
  }) = _EmailPart1Request;

  factory EmailPart1Request.fromJson(Map<String, Object?> json) =>
      _$EmailPart1RequestFromJson(json);
}

@freezed
class EmailPart2Request with _$EmailPart2Request {
  const factory EmailPart2Request({
    required String email,
    required String code,
  }) = _EmailPart2Request;

  factory EmailPart2Request.fromJson(Map<String, Object?> json) =>
      _$EmailPart2RequestFromJson(json);
}

@freezed
class AuthResponse with _$AuthResponse {
  const factory AuthResponse({
    @JsonKey(name: 'access_token') required String accessToken,
    @JsonKey(name: 'refresh_token') required String refreshToken,
  }) = _AuthResponse;

  factory AuthResponse.fromJson(Map<String, Object?> json) =>
      _$AuthResponseFromJson(json);
}

@freezed
class RequestUser with _$RequestUser {
  const factory RequestUser({
    @JsonKey(name: 'first_name') String? firstName,
    @JsonKey(name: 'second_name') String? secondName,
    required String email,
    String? phone,
    Gender? gender,
    DateTime? birthday,
    Role? role,
  }) = _RequestUser;

  factory RequestUser.fromJson(Map<String, Object?> json) =>
      _$RequestUserFromJson(json);
}

enum Gender {
  @JsonValue('unknown')
  unknown,
  @JsonValue('male')
  male,
  @JsonValue('female')
  female,
}

enum Role {
  @JsonValue('client')
  client,
  @JsonValue('farmer')
  farmer,
  @JsonValue('admin')
  admin,
}
