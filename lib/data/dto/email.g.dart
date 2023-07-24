// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'email.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_EmailPart1Request _$$_EmailPart1RequestFromJson(Map<String, dynamic> json) =>
    _$_EmailPart1Request(
      email: json['email'] as String,
      digits: json['digits'] as int?,
    );

Map<String, dynamic> _$$_EmailPart1RequestToJson(
        _$_EmailPart1Request instance) =>
    <String, dynamic>{
      'email': instance.email,
      'digits': instance.digits,
    };

_$_EmailPart2Request _$$_EmailPart2RequestFromJson(Map<String, dynamic> json) =>
    _$_EmailPart2Request(
      email: json['email'] as String,
      code: json['code'] as String,
    );

Map<String, dynamic> _$$_EmailPart2RequestToJson(
        _$_EmailPart2Request instance) =>
    <String, dynamic>{
      'email': instance.email,
      'code': instance.code,
    };

_$_AuthResponse _$$_AuthResponseFromJson(Map<String, dynamic> json) =>
    _$_AuthResponse(
      accessToken: json['access_token'] as String,
      refreshToken: json['refresh_token'] as String,
    );

Map<String, dynamic> _$$_AuthResponseToJson(_$_AuthResponse instance) =>
    <String, dynamic>{
      'access_token': instance.accessToken,
      'refresh_token': instance.refreshToken,
    };

_$_RequestUser _$$_RequestUserFromJson(Map<String, dynamic> json) =>
    _$_RequestUser(
      firstName: json['first_name'] as String?,
      secondName: json['second_name'] as String?,
      email: json['email'] as String,
      phone: json['phone'] as String?,
      gender: $enumDecodeNullable(_$GenderEnumMap, json['gender']),
      birthday: json['birthday'] == null
          ? null
          : DateTime.parse(json['birthday'] as String),
      role: $enumDecodeNullable(_$RoleEnumMap, json['role']),
    );

Map<String, dynamic> _$$_RequestUserToJson(_$_RequestUser instance) =>
    <String, dynamic>{
      'first_name': instance.firstName,
      'second_name': instance.secondName,
      'email': instance.email,
      'phone': instance.phone,
      'gender': _$GenderEnumMap[instance.gender],
      'birthday': instance.birthday?.toIso8601String(),
      'role': _$RoleEnumMap[instance.role],
    };

const _$GenderEnumMap = {
  Gender.unknown: 'unknown',
  Gender.male: 'male',
  Gender.female: 'female',
};

const _$RoleEnumMap = {
  Role.client: 'client',
  Role.farmer: 'farmer',
  Role.admin: 'admin',
};
