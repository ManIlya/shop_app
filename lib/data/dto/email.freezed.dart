// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'email.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

EmailPart1Request _$EmailPart1RequestFromJson(Map<String, dynamic> json) {
  return _EmailPart1Request.fromJson(json);
}

/// @nodoc
mixin _$EmailPart1Request {
  String get email => throw _privateConstructorUsedError;
  int? get digits => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EmailPart1RequestCopyWith<EmailPart1Request> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmailPart1RequestCopyWith<$Res> {
  factory $EmailPart1RequestCopyWith(
          EmailPart1Request value, $Res Function(EmailPart1Request) then) =
      _$EmailPart1RequestCopyWithImpl<$Res, EmailPart1Request>;
  @useResult
  $Res call({String email, int? digits});
}

/// @nodoc
class _$EmailPart1RequestCopyWithImpl<$Res, $Val extends EmailPart1Request>
    implements $EmailPart1RequestCopyWith<$Res> {
  _$EmailPart1RequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? digits = freezed,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      digits: freezed == digits
          ? _value.digits
          : digits // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_EmailPart1RequestCopyWith<$Res>
    implements $EmailPart1RequestCopyWith<$Res> {
  factory _$$_EmailPart1RequestCopyWith(_$_EmailPart1Request value,
          $Res Function(_$_EmailPart1Request) then) =
      __$$_EmailPart1RequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String email, int? digits});
}

/// @nodoc
class __$$_EmailPart1RequestCopyWithImpl<$Res>
    extends _$EmailPart1RequestCopyWithImpl<$Res, _$_EmailPart1Request>
    implements _$$_EmailPart1RequestCopyWith<$Res> {
  __$$_EmailPart1RequestCopyWithImpl(
      _$_EmailPart1Request _value, $Res Function(_$_EmailPart1Request) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? digits = freezed,
  }) {
    return _then(_$_EmailPart1Request(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      digits: freezed == digits
          ? _value.digits
          : digits // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_EmailPart1Request implements _EmailPart1Request {
  const _$_EmailPart1Request({required this.email, this.digits});

  factory _$_EmailPart1Request.fromJson(Map<String, dynamic> json) =>
      _$$_EmailPart1RequestFromJson(json);

  @override
  final String email;
  @override
  final int? digits;

  @override
  String toString() {
    return 'EmailPart1Request(email: $email, digits: $digits)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EmailPart1Request &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.digits, digits) || other.digits == digits));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, email, digits);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EmailPart1RequestCopyWith<_$_EmailPart1Request> get copyWith =>
      __$$_EmailPart1RequestCopyWithImpl<_$_EmailPart1Request>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EmailPart1RequestToJson(
      this,
    );
  }
}

abstract class _EmailPart1Request implements EmailPart1Request {
  const factory _EmailPart1Request(
      {required final String email, final int? digits}) = _$_EmailPart1Request;

  factory _EmailPart1Request.fromJson(Map<String, dynamic> json) =
      _$_EmailPart1Request.fromJson;

  @override
  String get email;
  @override
  int? get digits;
  @override
  @JsonKey(ignore: true)
  _$$_EmailPart1RequestCopyWith<_$_EmailPart1Request> get copyWith =>
      throw _privateConstructorUsedError;
}

EmailPart2Request _$EmailPart2RequestFromJson(Map<String, dynamic> json) {
  return _EmailPart2Request.fromJson(json);
}

/// @nodoc
mixin _$EmailPart2Request {
  String get email => throw _privateConstructorUsedError;
  String get code => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EmailPart2RequestCopyWith<EmailPart2Request> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmailPart2RequestCopyWith<$Res> {
  factory $EmailPart2RequestCopyWith(
          EmailPart2Request value, $Res Function(EmailPart2Request) then) =
      _$EmailPart2RequestCopyWithImpl<$Res, EmailPart2Request>;
  @useResult
  $Res call({String email, String code});
}

/// @nodoc
class _$EmailPart2RequestCopyWithImpl<$Res, $Val extends EmailPart2Request>
    implements $EmailPart2RequestCopyWith<$Res> {
  _$EmailPart2RequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? code = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_EmailPart2RequestCopyWith<$Res>
    implements $EmailPart2RequestCopyWith<$Res> {
  factory _$$_EmailPart2RequestCopyWith(_$_EmailPart2Request value,
          $Res Function(_$_EmailPart2Request) then) =
      __$$_EmailPart2RequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String email, String code});
}

/// @nodoc
class __$$_EmailPart2RequestCopyWithImpl<$Res>
    extends _$EmailPart2RequestCopyWithImpl<$Res, _$_EmailPart2Request>
    implements _$$_EmailPart2RequestCopyWith<$Res> {
  __$$_EmailPart2RequestCopyWithImpl(
      _$_EmailPart2Request _value, $Res Function(_$_EmailPart2Request) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? code = null,
  }) {
    return _then(_$_EmailPart2Request(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_EmailPart2Request implements _EmailPart2Request {
  const _$_EmailPart2Request({required this.email, required this.code});

  factory _$_EmailPart2Request.fromJson(Map<String, dynamic> json) =>
      _$$_EmailPart2RequestFromJson(json);

  @override
  final String email;
  @override
  final String code;

  @override
  String toString() {
    return 'EmailPart2Request(email: $email, code: $code)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EmailPart2Request &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.code, code) || other.code == code));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, email, code);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EmailPart2RequestCopyWith<_$_EmailPart2Request> get copyWith =>
      __$$_EmailPart2RequestCopyWithImpl<_$_EmailPart2Request>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EmailPart2RequestToJson(
      this,
    );
  }
}

abstract class _EmailPart2Request implements EmailPart2Request {
  const factory _EmailPart2Request(
      {required final String email,
      required final String code}) = _$_EmailPart2Request;

  factory _EmailPart2Request.fromJson(Map<String, dynamic> json) =
      _$_EmailPart2Request.fromJson;

  @override
  String get email;
  @override
  String get code;
  @override
  @JsonKey(ignore: true)
  _$$_EmailPart2RequestCopyWith<_$_EmailPart2Request> get copyWith =>
      throw _privateConstructorUsedError;
}

AuthResponse _$AuthResponseFromJson(Map<String, dynamic> json) {
  return _AuthResponse.fromJson(json);
}

/// @nodoc
mixin _$AuthResponse {
  @JsonKey(name: 'access_token')
  String get accessToken => throw _privateConstructorUsedError;
  @JsonKey(name: 'refresh_token')
  String get refreshToken => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthResponseCopyWith<AuthResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthResponseCopyWith<$Res> {
  factory $AuthResponseCopyWith(
          AuthResponse value, $Res Function(AuthResponse) then) =
      _$AuthResponseCopyWithImpl<$Res, AuthResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'access_token') String accessToken,
      @JsonKey(name: 'refresh_token') String refreshToken});
}

/// @nodoc
class _$AuthResponseCopyWithImpl<$Res, $Val extends AuthResponse>
    implements $AuthResponseCopyWith<$Res> {
  _$AuthResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessToken = null,
    Object? refreshToken = null,
  }) {
    return _then(_value.copyWith(
      accessToken: null == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      refreshToken: null == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AuthResponseCopyWith<$Res>
    implements $AuthResponseCopyWith<$Res> {
  factory _$$_AuthResponseCopyWith(
          _$_AuthResponse value, $Res Function(_$_AuthResponse) then) =
      __$$_AuthResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'access_token') String accessToken,
      @JsonKey(name: 'refresh_token') String refreshToken});
}

/// @nodoc
class __$$_AuthResponseCopyWithImpl<$Res>
    extends _$AuthResponseCopyWithImpl<$Res, _$_AuthResponse>
    implements _$$_AuthResponseCopyWith<$Res> {
  __$$_AuthResponseCopyWithImpl(
      _$_AuthResponse _value, $Res Function(_$_AuthResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessToken = null,
    Object? refreshToken = null,
  }) {
    return _then(_$_AuthResponse(
      accessToken: null == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      refreshToken: null == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AuthResponse implements _AuthResponse {
  const _$_AuthResponse(
      {@JsonKey(name: 'access_token') required this.accessToken,
      @JsonKey(name: 'refresh_token') required this.refreshToken});

  factory _$_AuthResponse.fromJson(Map<String, dynamic> json) =>
      _$$_AuthResponseFromJson(json);

  @override
  @JsonKey(name: 'access_token')
  final String accessToken;
  @override
  @JsonKey(name: 'refresh_token')
  final String refreshToken;

  @override
  String toString() {
    return 'AuthResponse(accessToken: $accessToken, refreshToken: $refreshToken)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthResponse &&
            (identical(other.accessToken, accessToken) ||
                other.accessToken == accessToken) &&
            (identical(other.refreshToken, refreshToken) ||
                other.refreshToken == refreshToken));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, accessToken, refreshToken);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthResponseCopyWith<_$_AuthResponse> get copyWith =>
      __$$_AuthResponseCopyWithImpl<_$_AuthResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AuthResponseToJson(
      this,
    );
  }
}

abstract class _AuthResponse implements AuthResponse {
  const factory _AuthResponse(
          {@JsonKey(name: 'access_token') required final String accessToken,
          @JsonKey(name: 'refresh_token') required final String refreshToken}) =
      _$_AuthResponse;

  factory _AuthResponse.fromJson(Map<String, dynamic> json) =
      _$_AuthResponse.fromJson;

  @override
  @JsonKey(name: 'access_token')
  String get accessToken;
  @override
  @JsonKey(name: 'refresh_token')
  String get refreshToken;
  @override
  @JsonKey(ignore: true)
  _$$_AuthResponseCopyWith<_$_AuthResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

RequestUser _$RequestUserFromJson(Map<String, dynamic> json) {
  return _RequestUser.fromJson(json);
}

/// @nodoc
mixin _$RequestUser {
  @JsonKey(name: 'first_name')
  String? get firstName => throw _privateConstructorUsedError;
  @JsonKey(name: 'second_name')
  String? get secondName => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  Gender? get gender => throw _privateConstructorUsedError;
  DateTime? get birthday => throw _privateConstructorUsedError;
  Role? get role => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RequestUserCopyWith<RequestUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestUserCopyWith<$Res> {
  factory $RequestUserCopyWith(
          RequestUser value, $Res Function(RequestUser) then) =
      _$RequestUserCopyWithImpl<$Res, RequestUser>;
  @useResult
  $Res call(
      {@JsonKey(name: 'first_name') String? firstName,
      @JsonKey(name: 'second_name') String? secondName,
      String email,
      String? phone,
      Gender? gender,
      DateTime? birthday,
      Role? role});
}

/// @nodoc
class _$RequestUserCopyWithImpl<$Res, $Val extends RequestUser>
    implements $RequestUserCopyWith<$Res> {
  _$RequestUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = freezed,
    Object? secondName = freezed,
    Object? email = null,
    Object? phone = freezed,
    Object? gender = freezed,
    Object? birthday = freezed,
    Object? role = freezed,
  }) {
    return _then(_value.copyWith(
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      secondName: freezed == secondName
          ? _value.secondName
          : secondName // ignore: cast_nullable_to_non_nullable
              as String?,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as Gender?,
      birthday: freezed == birthday
          ? _value.birthday
          : birthday // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as Role?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RequestUserCopyWith<$Res>
    implements $RequestUserCopyWith<$Res> {
  factory _$$_RequestUserCopyWith(
          _$_RequestUser value, $Res Function(_$_RequestUser) then) =
      __$$_RequestUserCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'first_name') String? firstName,
      @JsonKey(name: 'second_name') String? secondName,
      String email,
      String? phone,
      Gender? gender,
      DateTime? birthday,
      Role? role});
}

/// @nodoc
class __$$_RequestUserCopyWithImpl<$Res>
    extends _$RequestUserCopyWithImpl<$Res, _$_RequestUser>
    implements _$$_RequestUserCopyWith<$Res> {
  __$$_RequestUserCopyWithImpl(
      _$_RequestUser _value, $Res Function(_$_RequestUser) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = freezed,
    Object? secondName = freezed,
    Object? email = null,
    Object? phone = freezed,
    Object? gender = freezed,
    Object? birthday = freezed,
    Object? role = freezed,
  }) {
    return _then(_$_RequestUser(
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      secondName: freezed == secondName
          ? _value.secondName
          : secondName // ignore: cast_nullable_to_non_nullable
              as String?,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as Gender?,
      birthday: freezed == birthday
          ? _value.birthday
          : birthday // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as Role?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RequestUser implements _RequestUser {
  const _$_RequestUser(
      {@JsonKey(name: 'first_name') this.firstName,
      @JsonKey(name: 'second_name') this.secondName,
      required this.email,
      this.phone,
      this.gender,
      this.birthday,
      this.role});

  factory _$_RequestUser.fromJson(Map<String, dynamic> json) =>
      _$$_RequestUserFromJson(json);

  @override
  @JsonKey(name: 'first_name')
  final String? firstName;
  @override
  @JsonKey(name: 'second_name')
  final String? secondName;
  @override
  final String email;
  @override
  final String? phone;
  @override
  final Gender? gender;
  @override
  final DateTime? birthday;
  @override
  final Role? role;

  @override
  String toString() {
    return 'RequestUser(firstName: $firstName, secondName: $secondName, email: $email, phone: $phone, gender: $gender, birthday: $birthday, role: $role)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RequestUser &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.secondName, secondName) ||
                other.secondName == secondName) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.birthday, birthday) ||
                other.birthday == birthday) &&
            (identical(other.role, role) || other.role == role));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, firstName, secondName, email, phone, gender, birthday, role);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RequestUserCopyWith<_$_RequestUser> get copyWith =>
      __$$_RequestUserCopyWithImpl<_$_RequestUser>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RequestUserToJson(
      this,
    );
  }
}

abstract class _RequestUser implements RequestUser {
  const factory _RequestUser(
      {@JsonKey(name: 'first_name') final String? firstName,
      @JsonKey(name: 'second_name') final String? secondName,
      required final String email,
      final String? phone,
      final Gender? gender,
      final DateTime? birthday,
      final Role? role}) = _$_RequestUser;

  factory _RequestUser.fromJson(Map<String, dynamic> json) =
      _$_RequestUser.fromJson;

  @override
  @JsonKey(name: 'first_name')
  String? get firstName;
  @override
  @JsonKey(name: 'second_name')
  String? get secondName;
  @override
  String get email;
  @override
  String? get phone;
  @override
  Gender? get gender;
  @override
  DateTime? get birthday;
  @override
  Role? get role;
  @override
  @JsonKey(ignore: true)
  _$$_RequestUserCopyWith<_$_RequestUser> get copyWith =>
      throw _privateConstructorUsedError;
}
