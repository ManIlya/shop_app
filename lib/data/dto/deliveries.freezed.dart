// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'deliveries.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DeliveriesRequest _$DeliveriesRequestFromJson(Map<String, dynamic> json) {
  return _DeliveriesRequest.fromJson(json);
}

/// @nodoc
mixin _$DeliveriesRequest {
  @JsonKey(name: 'city_fias', includeIfNull: false)
  String? get cityFias => throw _privateConstructorUsedError;
  @JsonKey(name: 'products')
  List<CartProductIds>? get products => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeliveriesRequestCopyWith<DeliveriesRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeliveriesRequestCopyWith<$Res> {
  factory $DeliveriesRequestCopyWith(
          DeliveriesRequest value, $Res Function(DeliveriesRequest) then) =
      _$DeliveriesRequestCopyWithImpl<$Res, DeliveriesRequest>;
  @useResult
  $Res call(
      {@JsonKey(name: 'city_fias', includeIfNull: false) String? cityFias,
      @JsonKey(name: 'products') List<CartProductIds>? products});
}

/// @nodoc
class _$DeliveriesRequestCopyWithImpl<$Res, $Val extends DeliveriesRequest>
    implements $DeliveriesRequestCopyWith<$Res> {
  _$DeliveriesRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cityFias = freezed,
    Object? products = freezed,
  }) {
    return _then(_value.copyWith(
      cityFias: freezed == cityFias
          ? _value.cityFias
          : cityFias // ignore: cast_nullable_to_non_nullable
              as String?,
      products: freezed == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<CartProductIds>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DeliveriesRequestCopyWith<$Res>
    implements $DeliveriesRequestCopyWith<$Res> {
  factory _$$_DeliveriesRequestCopyWith(_$_DeliveriesRequest value,
          $Res Function(_$_DeliveriesRequest) then) =
      __$$_DeliveriesRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'city_fias', includeIfNull: false) String? cityFias,
      @JsonKey(name: 'products') List<CartProductIds>? products});
}

/// @nodoc
class __$$_DeliveriesRequestCopyWithImpl<$Res>
    extends _$DeliveriesRequestCopyWithImpl<$Res, _$_DeliveriesRequest>
    implements _$$_DeliveriesRequestCopyWith<$Res> {
  __$$_DeliveriesRequestCopyWithImpl(
      _$_DeliveriesRequest _value, $Res Function(_$_DeliveriesRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cityFias = freezed,
    Object? products = freezed,
  }) {
    return _then(_$_DeliveriesRequest(
      cityFias: freezed == cityFias
          ? _value.cityFias
          : cityFias // ignore: cast_nullable_to_non_nullable
              as String?,
      products: freezed == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<CartProductIds>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DeliveriesRequest implements _DeliveriesRequest {
  const _$_DeliveriesRequest(
      {@JsonKey(name: 'city_fias', includeIfNull: false) this.cityFias,
      @JsonKey(name: 'products') final List<CartProductIds>? products})
      : _products = products;

  factory _$_DeliveriesRequest.fromJson(Map<String, dynamic> json) =>
      _$$_DeliveriesRequestFromJson(json);

  @override
  @JsonKey(name: 'city_fias', includeIfNull: false)
  final String? cityFias;
  final List<CartProductIds>? _products;
  @override
  @JsonKey(name: 'products')
  List<CartProductIds>? get products {
    final value = _products;
    if (value == null) return null;
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'DeliveriesRequest(cityFias: $cityFias, products: $products)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DeliveriesRequest &&
            (identical(other.cityFias, cityFias) ||
                other.cityFias == cityFias) &&
            const DeepCollectionEquality().equals(other._products, _products));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, cityFias, const DeepCollectionEquality().hash(_products));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DeliveriesRequestCopyWith<_$_DeliveriesRequest> get copyWith =>
      __$$_DeliveriesRequestCopyWithImpl<_$_DeliveriesRequest>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DeliveriesRequestToJson(
      this,
    );
  }
}

abstract class _DeliveriesRequest implements DeliveriesRequest {
  const factory _DeliveriesRequest(
      {@JsonKey(name: 'city_fias', includeIfNull: false) final String? cityFias,
      @JsonKey(name: 'products')
      final List<CartProductIds>? products}) = _$_DeliveriesRequest;

  factory _DeliveriesRequest.fromJson(Map<String, dynamic> json) =
      _$_DeliveriesRequest.fromJson;

  @override
  @JsonKey(name: 'city_fias', includeIfNull: false)
  String? get cityFias;
  @override
  @JsonKey(name: 'products')
  List<CartProductIds>? get products;
  @override
  @JsonKey(ignore: true)
  _$$_DeliveriesRequestCopyWith<_$_DeliveriesRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

Delivery _$DeliveryFromJson(Map<String, dynamic> json) {
  return _Delivery.fromJson(json);
}

/// @nodoc
mixin _$Delivery {
  @JsonKey(name: 'id')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'title')
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'description')
  String get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'type')
  String get type => throw _privateConstructorUsedError;
  @JsonKey(name: 'icon')
  String get icon => throw _privateConstructorUsedError;
  @JsonKey(name: 'locations')
  List<DeliveryPoint>? get locations => throw _privateConstructorUsedError;
  @JsonKey(name: 'farm_address')
  String? get farmAddress => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeliveryCopyWith<Delivery> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeliveryCopyWith<$Res> {
  factory $DeliveryCopyWith(Delivery value, $Res Function(Delivery) then) =
      _$DeliveryCopyWithImpl<$Res, Delivery>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'title') String title,
      @JsonKey(name: 'description') String description,
      @JsonKey(name: 'type') String type,
      @JsonKey(name: 'icon') String icon,
      @JsonKey(name: 'locations') List<DeliveryPoint>? locations,
      @JsonKey(name: 'farm_address') String? farmAddress});
}

/// @nodoc
class _$DeliveryCopyWithImpl<$Res, $Val extends Delivery>
    implements $DeliveryCopyWith<$Res> {
  _$DeliveryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? type = null,
    Object? icon = null,
    Object? locations = freezed,
    Object? farmAddress = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
      locations: freezed == locations
          ? _value.locations
          : locations // ignore: cast_nullable_to_non_nullable
              as List<DeliveryPoint>?,
      farmAddress: freezed == farmAddress
          ? _value.farmAddress
          : farmAddress // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DeliveryCopyWith<$Res> implements $DeliveryCopyWith<$Res> {
  factory _$$_DeliveryCopyWith(
          _$_Delivery value, $Res Function(_$_Delivery) then) =
      __$$_DeliveryCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'title') String title,
      @JsonKey(name: 'description') String description,
      @JsonKey(name: 'type') String type,
      @JsonKey(name: 'icon') String icon,
      @JsonKey(name: 'locations') List<DeliveryPoint>? locations,
      @JsonKey(name: 'farm_address') String? farmAddress});
}

/// @nodoc
class __$$_DeliveryCopyWithImpl<$Res>
    extends _$DeliveryCopyWithImpl<$Res, _$_Delivery>
    implements _$$_DeliveryCopyWith<$Res> {
  __$$_DeliveryCopyWithImpl(
      _$_Delivery _value, $Res Function(_$_Delivery) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? type = null,
    Object? icon = null,
    Object? locations = freezed,
    Object? farmAddress = freezed,
  }) {
    return _then(_$_Delivery(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
      locations: freezed == locations
          ? _value._locations
          : locations // ignore: cast_nullable_to_non_nullable
              as List<DeliveryPoint>?,
      farmAddress: freezed == farmAddress
          ? _value.farmAddress
          : farmAddress // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Delivery implements _Delivery {
  const _$_Delivery(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'title') required this.title,
      @JsonKey(name: 'description') required this.description,
      @JsonKey(name: 'type') required this.type,
      @JsonKey(name: 'icon') required this.icon,
      @JsonKey(name: 'locations') final List<DeliveryPoint>? locations,
      @JsonKey(name: 'farm_address') this.farmAddress})
      : _locations = locations;

  factory _$_Delivery.fromJson(Map<String, dynamic> json) =>
      _$$_DeliveryFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String id;
  @override
  @JsonKey(name: 'title')
  final String title;
  @override
  @JsonKey(name: 'description')
  final String description;
  @override
  @JsonKey(name: 'type')
  final String type;
  @override
  @JsonKey(name: 'icon')
  final String icon;
  final List<DeliveryPoint>? _locations;
  @override
  @JsonKey(name: 'locations')
  List<DeliveryPoint>? get locations {
    final value = _locations;
    if (value == null) return null;
    if (_locations is EqualUnmodifiableListView) return _locations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'farm_address')
  final String? farmAddress;

  @override
  String toString() {
    return 'Delivery(id: $id, title: $title, description: $description, type: $type, icon: $icon, locations: $locations, farmAddress: $farmAddress)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Delivery &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.icon, icon) || other.icon == icon) &&
            const DeepCollectionEquality()
                .equals(other._locations, _locations) &&
            (identical(other.farmAddress, farmAddress) ||
                other.farmAddress == farmAddress));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, description, type,
      icon, const DeepCollectionEquality().hash(_locations), farmAddress);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DeliveryCopyWith<_$_Delivery> get copyWith =>
      __$$_DeliveryCopyWithImpl<_$_Delivery>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DeliveryToJson(
      this,
    );
  }
}

abstract class _Delivery implements Delivery {
  const factory _Delivery(
      {@JsonKey(name: 'id') required final String id,
      @JsonKey(name: 'title') required final String title,
      @JsonKey(name: 'description') required final String description,
      @JsonKey(name: 'type') required final String type,
      @JsonKey(name: 'icon') required final String icon,
      @JsonKey(name: 'locations') final List<DeliveryPoint>? locations,
      @JsonKey(name: 'farm_address') final String? farmAddress}) = _$_Delivery;

  factory _Delivery.fromJson(Map<String, dynamic> json) = _$_Delivery.fromJson;

  @override
  @JsonKey(name: 'id')
  String get id;
  @override
  @JsonKey(name: 'title')
  String get title;
  @override
  @JsonKey(name: 'description')
  String get description;
  @override
  @JsonKey(name: 'type')
  String get type;
  @override
  @JsonKey(name: 'icon')
  String get icon;
  @override
  @JsonKey(name: 'locations')
  List<DeliveryPoint>? get locations;
  @override
  @JsonKey(name: 'farm_address')
  String? get farmAddress;
  @override
  @JsonKey(ignore: true)
  _$$_DeliveryCopyWith<_$_Delivery> get copyWith =>
      throw _privateConstructorUsedError;
}

DeliveryPoint _$DeliveryPointFromJson(Map<String, dynamic> json) {
  return _DeliveryPoint.fromJson(json);
}

/// @nodoc
mixin _$DeliveryPoint {
  @JsonKey(name: 'id')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'address')
  String? get address => throw _privateConstructorUsedError;
  @JsonKey(name: 'phone')
  String? get phone => throw _privateConstructorUsedError;
  @JsonKey(name: 'lon')
  num get lon => throw _privateConstructorUsedError;
  @JsonKey(name: 'lat')
  num get lat => throw _privateConstructorUsedError;
  @JsonKey(name: 'work_house')
  String? get workHouse => throw _privateConstructorUsedError;
  @JsonKey(name: 'payment_allowed')
  bool? get paymentAllowed => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeliveryPointCopyWith<DeliveryPoint> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeliveryPointCopyWith<$Res> {
  factory $DeliveryPointCopyWith(
          DeliveryPoint value, $Res Function(DeliveryPoint) then) =
      _$DeliveryPointCopyWithImpl<$Res, DeliveryPoint>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'address') String? address,
      @JsonKey(name: 'phone') String? phone,
      @JsonKey(name: 'lon') num lon,
      @JsonKey(name: 'lat') num lat,
      @JsonKey(name: 'work_house') String? workHouse,
      @JsonKey(name: 'payment_allowed') bool? paymentAllowed});
}

/// @nodoc
class _$DeliveryPointCopyWithImpl<$Res, $Val extends DeliveryPoint>
    implements $DeliveryPointCopyWith<$Res> {
  _$DeliveryPointCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = freezed,
    Object? address = freezed,
    Object? phone = freezed,
    Object? lon = null,
    Object? lat = null,
    Object? workHouse = freezed,
    Object? paymentAllowed = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      lon: null == lon
          ? _value.lon
          : lon // ignore: cast_nullable_to_non_nullable
              as num,
      lat: null == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as num,
      workHouse: freezed == workHouse
          ? _value.workHouse
          : workHouse // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentAllowed: freezed == paymentAllowed
          ? _value.paymentAllowed
          : paymentAllowed // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DeliveryPointCopyWith<$Res>
    implements $DeliveryPointCopyWith<$Res> {
  factory _$$_DeliveryPointCopyWith(
          _$_DeliveryPoint value, $Res Function(_$_DeliveryPoint) then) =
      __$$_DeliveryPointCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'address') String? address,
      @JsonKey(name: 'phone') String? phone,
      @JsonKey(name: 'lon') num lon,
      @JsonKey(name: 'lat') num lat,
      @JsonKey(name: 'work_house') String? workHouse,
      @JsonKey(name: 'payment_allowed') bool? paymentAllowed});
}

/// @nodoc
class __$$_DeliveryPointCopyWithImpl<$Res>
    extends _$DeliveryPointCopyWithImpl<$Res, _$_DeliveryPoint>
    implements _$$_DeliveryPointCopyWith<$Res> {
  __$$_DeliveryPointCopyWithImpl(
      _$_DeliveryPoint _value, $Res Function(_$_DeliveryPoint) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = freezed,
    Object? address = freezed,
    Object? phone = freezed,
    Object? lon = null,
    Object? lat = null,
    Object? workHouse = freezed,
    Object? paymentAllowed = freezed,
  }) {
    return _then(_$_DeliveryPoint(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      lon: null == lon
          ? _value.lon
          : lon // ignore: cast_nullable_to_non_nullable
              as num,
      lat: null == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as num,
      workHouse: freezed == workHouse
          ? _value.workHouse
          : workHouse // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentAllowed: freezed == paymentAllowed
          ? _value.paymentAllowed
          : paymentAllowed // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DeliveryPoint implements _DeliveryPoint {
  const _$_DeliveryPoint(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'name') this.name,
      @JsonKey(name: 'address') this.address,
      @JsonKey(name: 'phone') this.phone,
      @JsonKey(name: 'lon') required this.lon,
      @JsonKey(name: 'lat') required this.lat,
      @JsonKey(name: 'work_house') this.workHouse,
      @JsonKey(name: 'payment_allowed') this.paymentAllowed});

  factory _$_DeliveryPoint.fromJson(Map<String, dynamic> json) =>
      _$$_DeliveryPointFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String id;
  @override
  @JsonKey(name: 'name')
  final String? name;
  @override
  @JsonKey(name: 'address')
  final String? address;
  @override
  @JsonKey(name: 'phone')
  final String? phone;
  @override
  @JsonKey(name: 'lon')
  final num lon;
  @override
  @JsonKey(name: 'lat')
  final num lat;
  @override
  @JsonKey(name: 'work_house')
  final String? workHouse;
  @override
  @JsonKey(name: 'payment_allowed')
  final bool? paymentAllowed;

  @override
  String toString() {
    return 'DeliveryPoint(id: $id, name: $name, address: $address, phone: $phone, lon: $lon, lat: $lat, workHouse: $workHouse, paymentAllowed: $paymentAllowed)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DeliveryPoint &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.lon, lon) || other.lon == lon) &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.workHouse, workHouse) ||
                other.workHouse == workHouse) &&
            (identical(other.paymentAllowed, paymentAllowed) ||
                other.paymentAllowed == paymentAllowed));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, address, phone, lon,
      lat, workHouse, paymentAllowed);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DeliveryPointCopyWith<_$_DeliveryPoint> get copyWith =>
      __$$_DeliveryPointCopyWithImpl<_$_DeliveryPoint>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DeliveryPointToJson(
      this,
    );
  }
}

abstract class _DeliveryPoint implements DeliveryPoint {
  const factory _DeliveryPoint(
          {@JsonKey(name: 'id') required final String id,
          @JsonKey(name: 'name') final String? name,
          @JsonKey(name: 'address') final String? address,
          @JsonKey(name: 'phone') final String? phone,
          @JsonKey(name: 'lon') required final num lon,
          @JsonKey(name: 'lat') required final num lat,
          @JsonKey(name: 'work_house') final String? workHouse,
          @JsonKey(name: 'payment_allowed') final bool? paymentAllowed}) =
      _$_DeliveryPoint;

  factory _DeliveryPoint.fromJson(Map<String, dynamic> json) =
      _$_DeliveryPoint.fromJson;

  @override
  @JsonKey(name: 'id')
  String get id;
  @override
  @JsonKey(name: 'name')
  String? get name;
  @override
  @JsonKey(name: 'address')
  String? get address;
  @override
  @JsonKey(name: 'phone')
  String? get phone;
  @override
  @JsonKey(name: 'lon')
  num get lon;
  @override
  @JsonKey(name: 'lat')
  num get lat;
  @override
  @JsonKey(name: 'work_house')
  String? get workHouse;
  @override
  @JsonKey(name: 'payment_allowed')
  bool? get paymentAllowed;
  @override
  @JsonKey(ignore: true)
  _$$_DeliveryPointCopyWith<_$_DeliveryPoint> get copyWith =>
      throw _privateConstructorUsedError;
}

Payment _$PaymentFromJson(Map<String, dynamic> json) {
  return _Payment.fromJson(json);
}

/// @nodoc
mixin _$Payment {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get icon => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PaymentCopyWith<Payment> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentCopyWith<$Res> {
  factory $PaymentCopyWith(Payment value, $Res Function(Payment) then) =
      _$PaymentCopyWithImpl<$Res, Payment>;
  @useResult
  $Res call(
      {String id, String title, String type, String description, String icon});
}

/// @nodoc
class _$PaymentCopyWithImpl<$Res, $Val extends Payment>
    implements $PaymentCopyWith<$Res> {
  _$PaymentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? type = null,
    Object? description = null,
    Object? icon = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PaymentCopyWith<$Res> implements $PaymentCopyWith<$Res> {
  factory _$$_PaymentCopyWith(
          _$_Payment value, $Res Function(_$_Payment) then) =
      __$$_PaymentCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id, String title, String type, String description, String icon});
}

/// @nodoc
class __$$_PaymentCopyWithImpl<$Res>
    extends _$PaymentCopyWithImpl<$Res, _$_Payment>
    implements _$$_PaymentCopyWith<$Res> {
  __$$_PaymentCopyWithImpl(_$_Payment _value, $Res Function(_$_Payment) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? type = null,
    Object? description = null,
    Object? icon = null,
  }) {
    return _then(_$_Payment(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Payment implements _Payment {
  _$_Payment(
      {required this.id,
      required this.title,
      required this.type,
      required this.description,
      required this.icon});

  factory _$_Payment.fromJson(Map<String, dynamic> json) =>
      _$$_PaymentFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final String type;
  @override
  final String description;
  @override
  final String icon;

  @override
  String toString() {
    return 'Payment(id: $id, title: $title, type: $type, description: $description, icon: $icon)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Payment &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.icon, icon) || other.icon == icon));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, title, type, description, icon);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PaymentCopyWith<_$_Payment> get copyWith =>
      __$$_PaymentCopyWithImpl<_$_Payment>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PaymentToJson(
      this,
    );
  }
}

abstract class _Payment implements Payment {
  factory _Payment(
      {required final String id,
      required final String title,
      required final String type,
      required final String description,
      required final String icon}) = _$_Payment;

  factory _Payment.fromJson(Map<String, dynamic> json) = _$_Payment.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  String get type;
  @override
  String get description;
  @override
  String get icon;
  @override
  @JsonKey(ignore: true)
  _$$_PaymentCopyWith<_$_Payment> get copyWith =>
      throw _privateConstructorUsedError;
}

PaymentsRequest _$PaymentsRequestFromJson(Map<String, dynamic> json) {
  return _PaymentsRequest.fromJson(json);
}

/// @nodoc
mixin _$PaymentsRequest {
  @JsonKey(name: 'city_fias', includeIfNull: true)
  String? get cityFias => throw _privateConstructorUsedError;
  List<CartProductIds> get products => throw _privateConstructorUsedError;
  String get deliveryId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PaymentsRequestCopyWith<PaymentsRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentsRequestCopyWith<$Res> {
  factory $PaymentsRequestCopyWith(
          PaymentsRequest value, $Res Function(PaymentsRequest) then) =
      _$PaymentsRequestCopyWithImpl<$Res, PaymentsRequest>;
  @useResult
  $Res call(
      {@JsonKey(name: 'city_fias', includeIfNull: true) String? cityFias,
      List<CartProductIds> products,
      String deliveryId});
}

/// @nodoc
class _$PaymentsRequestCopyWithImpl<$Res, $Val extends PaymentsRequest>
    implements $PaymentsRequestCopyWith<$Res> {
  _$PaymentsRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cityFias = freezed,
    Object? products = null,
    Object? deliveryId = null,
  }) {
    return _then(_value.copyWith(
      cityFias: freezed == cityFias
          ? _value.cityFias
          : cityFias // ignore: cast_nullable_to_non_nullable
              as String?,
      products: null == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<CartProductIds>,
      deliveryId: null == deliveryId
          ? _value.deliveryId
          : deliveryId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PaymentsRequestCopyWith<$Res>
    implements $PaymentsRequestCopyWith<$Res> {
  factory _$$_PaymentsRequestCopyWith(
          _$_PaymentsRequest value, $Res Function(_$_PaymentsRequest) then) =
      __$$_PaymentsRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'city_fias', includeIfNull: true) String? cityFias,
      List<CartProductIds> products,
      String deliveryId});
}

/// @nodoc
class __$$_PaymentsRequestCopyWithImpl<$Res>
    extends _$PaymentsRequestCopyWithImpl<$Res, _$_PaymentsRequest>
    implements _$$_PaymentsRequestCopyWith<$Res> {
  __$$_PaymentsRequestCopyWithImpl(
      _$_PaymentsRequest _value, $Res Function(_$_PaymentsRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cityFias = freezed,
    Object? products = null,
    Object? deliveryId = null,
  }) {
    return _then(_$_PaymentsRequest(
      cityFias: freezed == cityFias
          ? _value.cityFias
          : cityFias // ignore: cast_nullable_to_non_nullable
              as String?,
      products: null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<CartProductIds>,
      deliveryId: null == deliveryId
          ? _value.deliveryId
          : deliveryId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PaymentsRequest implements _PaymentsRequest {
  _$_PaymentsRequest(
      {@JsonKey(name: 'city_fias', includeIfNull: true) this.cityFias,
      required final List<CartProductIds> products,
      required this.deliveryId})
      : _products = products;

  factory _$_PaymentsRequest.fromJson(Map<String, dynamic> json) =>
      _$$_PaymentsRequestFromJson(json);

  @override
  @JsonKey(name: 'city_fias', includeIfNull: true)
  final String? cityFias;
  final List<CartProductIds> _products;
  @override
  List<CartProductIds> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  @override
  final String deliveryId;

  @override
  String toString() {
    return 'PaymentsRequest(cityFias: $cityFias, products: $products, deliveryId: $deliveryId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PaymentsRequest &&
            (identical(other.cityFias, cityFias) ||
                other.cityFias == cityFias) &&
            const DeepCollectionEquality().equals(other._products, _products) &&
            (identical(other.deliveryId, deliveryId) ||
                other.deliveryId == deliveryId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, cityFias,
      const DeepCollectionEquality().hash(_products), deliveryId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PaymentsRequestCopyWith<_$_PaymentsRequest> get copyWith =>
      __$$_PaymentsRequestCopyWithImpl<_$_PaymentsRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PaymentsRequestToJson(
      this,
    );
  }
}

abstract class _PaymentsRequest implements PaymentsRequest {
  factory _PaymentsRequest(
      {@JsonKey(name: 'city_fias', includeIfNull: true) final String? cityFias,
      required final List<CartProductIds> products,
      required final String deliveryId}) = _$_PaymentsRequest;

  factory _PaymentsRequest.fromJson(Map<String, dynamic> json) =
      _$_PaymentsRequest.fromJson;

  @override
  @JsonKey(name: 'city_fias', includeIfNull: true)
  String? get cityFias;
  @override
  List<CartProductIds> get products;
  @override
  String get deliveryId;
  @override
  @JsonKey(ignore: true)
  _$$_PaymentsRequestCopyWith<_$_PaymentsRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
