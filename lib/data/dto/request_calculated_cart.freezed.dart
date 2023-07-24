// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'request_calculated_cart.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RequestCalculatedCart _$RequestCalculatedCartFromJson(
    Map<String, dynamic> json) {
  return _RequestCalculatedCart.fromJson(json);
}

/// @nodoc
mixin _$RequestCalculatedCart {
  @JsonKey(name: 'promocode', includeIfNull: false)
  String? get promocode => throw _privateConstructorUsedError;
  @JsonKey(name: 'city_fias', includeIfNull: false)
  String? get cityFias => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RequestCalculatedCartCopyWith<RequestCalculatedCart> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestCalculatedCartCopyWith<$Res> {
  factory $RequestCalculatedCartCopyWith(RequestCalculatedCart value,
          $Res Function(RequestCalculatedCart) then) =
      _$RequestCalculatedCartCopyWithImpl<$Res, RequestCalculatedCart>;
  @useResult
  $Res call(
      {@JsonKey(name: 'promocode', includeIfNull: false) String? promocode,
      @JsonKey(name: 'city_fias', includeIfNull: false) String? cityFias});
}

/// @nodoc
class _$RequestCalculatedCartCopyWithImpl<$Res,
        $Val extends RequestCalculatedCart>
    implements $RequestCalculatedCartCopyWith<$Res> {
  _$RequestCalculatedCartCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? promocode = freezed,
    Object? cityFias = freezed,
  }) {
    return _then(_value.copyWith(
      promocode: freezed == promocode
          ? _value.promocode
          : promocode // ignore: cast_nullable_to_non_nullable
              as String?,
      cityFias: freezed == cityFias
          ? _value.cityFias
          : cityFias // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RequestCalculatedCartCopyWith<$Res>
    implements $RequestCalculatedCartCopyWith<$Res> {
  factory _$$_RequestCalculatedCartCopyWith(_$_RequestCalculatedCart value,
          $Res Function(_$_RequestCalculatedCart) then) =
      __$$_RequestCalculatedCartCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'promocode', includeIfNull: false) String? promocode,
      @JsonKey(name: 'city_fias', includeIfNull: false) String? cityFias});
}

/// @nodoc
class __$$_RequestCalculatedCartCopyWithImpl<$Res>
    extends _$RequestCalculatedCartCopyWithImpl<$Res, _$_RequestCalculatedCart>
    implements _$$_RequestCalculatedCartCopyWith<$Res> {
  __$$_RequestCalculatedCartCopyWithImpl(_$_RequestCalculatedCart _value,
      $Res Function(_$_RequestCalculatedCart) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? promocode = freezed,
    Object? cityFias = freezed,
  }) {
    return _then(_$_RequestCalculatedCart(
      promocode: freezed == promocode
          ? _value.promocode
          : promocode // ignore: cast_nullable_to_non_nullable
              as String?,
      cityFias: freezed == cityFias
          ? _value.cityFias
          : cityFias // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RequestCalculatedCart implements _RequestCalculatedCart {
  _$_RequestCalculatedCart(
      {@JsonKey(name: 'promocode', includeIfNull: false) this.promocode,
      @JsonKey(name: 'city_fias', includeIfNull: false) this.cityFias});

  factory _$_RequestCalculatedCart.fromJson(Map<String, dynamic> json) =>
      _$$_RequestCalculatedCartFromJson(json);

  @override
  @JsonKey(name: 'promocode', includeIfNull: false)
  final String? promocode;
  @override
  @JsonKey(name: 'city_fias', includeIfNull: false)
  final String? cityFias;

  @override
  String toString() {
    return 'RequestCalculatedCart(promocode: $promocode, cityFias: $cityFias)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RequestCalculatedCart &&
            (identical(other.promocode, promocode) ||
                other.promocode == promocode) &&
            (identical(other.cityFias, cityFias) ||
                other.cityFias == cityFias));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, promocode, cityFias);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RequestCalculatedCartCopyWith<_$_RequestCalculatedCart> get copyWith =>
      __$$_RequestCalculatedCartCopyWithImpl<_$_RequestCalculatedCart>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RequestCalculatedCartToJson(
      this,
    );
  }
}

abstract class _RequestCalculatedCart implements RequestCalculatedCart {
  factory _RequestCalculatedCart(
      {@JsonKey(name: 'promocode', includeIfNull: false)
      final String? promocode,
      @JsonKey(name: 'city_fias', includeIfNull: false)
      final String? cityFias}) = _$_RequestCalculatedCart;

  factory _RequestCalculatedCart.fromJson(Map<String, dynamic> json) =
      _$_RequestCalculatedCart.fromJson;

  @override
  @JsonKey(name: 'promocode', includeIfNull: false)
  String? get promocode;
  @override
  @JsonKey(name: 'city_fias', includeIfNull: false)
  String? get cityFias;
  @override
  @JsonKey(ignore: true)
  _$$_RequestCalculatedCartCopyWith<_$_RequestCalculatedCart> get copyWith =>
      throw _privateConstructorUsedError;
}

CalculatedCart _$CalculatedCartFromJson(Map<String, dynamic> json) {
  return _CalculatedCart.fromJson(json);
}

/// @nodoc
mixin _$CalculatedCart {
  String get price => throw _privateConstructorUsedError;
  @JsonKey(name: 'old_price')
  String? get oldPrice => throw _privateConstructorUsedError;
  int get count => throw _privateConstructorUsedError;
  List<CartProduct> get products => throw _privateConstructorUsedError;
  bool? get applied => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CalculatedCartCopyWith<CalculatedCart> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CalculatedCartCopyWith<$Res> {
  factory $CalculatedCartCopyWith(
          CalculatedCart value, $Res Function(CalculatedCart) then) =
      _$CalculatedCartCopyWithImpl<$Res, CalculatedCart>;
  @useResult
  $Res call(
      {String price,
      @JsonKey(name: 'old_price') String? oldPrice,
      int count,
      List<CartProduct> products,
      bool? applied});
}

/// @nodoc
class _$CalculatedCartCopyWithImpl<$Res, $Val extends CalculatedCart>
    implements $CalculatedCartCopyWith<$Res> {
  _$CalculatedCartCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? price = null,
    Object? oldPrice = freezed,
    Object? count = null,
    Object? products = null,
    Object? applied = freezed,
  }) {
    return _then(_value.copyWith(
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String,
      oldPrice: freezed == oldPrice
          ? _value.oldPrice
          : oldPrice // ignore: cast_nullable_to_non_nullable
              as String?,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      products: null == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<CartProduct>,
      applied: freezed == applied
          ? _value.applied
          : applied // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CalculatedCartCopyWith<$Res>
    implements $CalculatedCartCopyWith<$Res> {
  factory _$$_CalculatedCartCopyWith(
          _$_CalculatedCart value, $Res Function(_$_CalculatedCart) then) =
      __$$_CalculatedCartCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String price,
      @JsonKey(name: 'old_price') String? oldPrice,
      int count,
      List<CartProduct> products,
      bool? applied});
}

/// @nodoc
class __$$_CalculatedCartCopyWithImpl<$Res>
    extends _$CalculatedCartCopyWithImpl<$Res, _$_CalculatedCart>
    implements _$$_CalculatedCartCopyWith<$Res> {
  __$$_CalculatedCartCopyWithImpl(
      _$_CalculatedCart _value, $Res Function(_$_CalculatedCart) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? price = null,
    Object? oldPrice = freezed,
    Object? count = null,
    Object? products = null,
    Object? applied = freezed,
  }) {
    return _then(_$_CalculatedCart(
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String,
      oldPrice: freezed == oldPrice
          ? _value.oldPrice
          : oldPrice // ignore: cast_nullable_to_non_nullable
              as String?,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      products: null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<CartProduct>,
      applied: freezed == applied
          ? _value.applied
          : applied // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CalculatedCart implements _CalculatedCart {
  const _$_CalculatedCart(
      {required this.price,
      @JsonKey(name: 'old_price') this.oldPrice,
      required this.count,
      required final List<CartProduct> products,
      this.applied})
      : _products = products;

  factory _$_CalculatedCart.fromJson(Map<String, dynamic> json) =>
      _$$_CalculatedCartFromJson(json);

  @override
  final String price;
  @override
  @JsonKey(name: 'old_price')
  final String? oldPrice;
  @override
  final int count;
  final List<CartProduct> _products;
  @override
  List<CartProduct> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  @override
  final bool? applied;

  @override
  String toString() {
    return 'CalculatedCart(price: $price, oldPrice: $oldPrice, count: $count, products: $products, applied: $applied)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CalculatedCart &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.oldPrice, oldPrice) ||
                other.oldPrice == oldPrice) &&
            (identical(other.count, count) || other.count == count) &&
            const DeepCollectionEquality().equals(other._products, _products) &&
            (identical(other.applied, applied) || other.applied == applied));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, price, oldPrice, count,
      const DeepCollectionEquality().hash(_products), applied);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CalculatedCartCopyWith<_$_CalculatedCart> get copyWith =>
      __$$_CalculatedCartCopyWithImpl<_$_CalculatedCart>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CalculatedCartToJson(
      this,
    );
  }
}

abstract class _CalculatedCart implements CalculatedCart {
  const factory _CalculatedCart(
      {required final String price,
      @JsonKey(name: 'old_price') final String? oldPrice,
      required final int count,
      required final List<CartProduct> products,
      final bool? applied}) = _$_CalculatedCart;

  factory _CalculatedCart.fromJson(Map<String, dynamic> json) =
      _$_CalculatedCart.fromJson;

  @override
  String get price;
  @override
  @JsonKey(name: 'old_price')
  String? get oldPrice;
  @override
  int get count;
  @override
  List<CartProduct> get products;
  @override
  bool? get applied;
  @override
  @JsonKey(ignore: true)
  _$$_CalculatedCartCopyWith<_$_CalculatedCart> get copyWith =>
      throw _privateConstructorUsedError;
}

CartProductIds _$CartProductIdsFromJson(Map<String, dynamic> json) {
  return _CartProductIds.fromJson(json);
}

/// @nodoc
mixin _$CartProductIds {
  @JsonKey(name: 'product_id')
  String get productId => throw _privateConstructorUsedError;
  int get count => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CartProductIdsCopyWith<CartProductIds> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartProductIdsCopyWith<$Res> {
  factory $CartProductIdsCopyWith(
          CartProductIds value, $Res Function(CartProductIds) then) =
      _$CartProductIdsCopyWithImpl<$Res, CartProductIds>;
  @useResult
  $Res call({@JsonKey(name: 'product_id') String productId, int count});
}

/// @nodoc
class _$CartProductIdsCopyWithImpl<$Res, $Val extends CartProductIds>
    implements $CartProductIdsCopyWith<$Res> {
  _$CartProductIdsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productId = null,
    Object? count = null,
  }) {
    return _then(_value.copyWith(
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CartProductIdsCopyWith<$Res>
    implements $CartProductIdsCopyWith<$Res> {
  factory _$$_CartProductIdsCopyWith(
          _$_CartProductIds value, $Res Function(_$_CartProductIds) then) =
      __$$_CartProductIdsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'product_id') String productId, int count});
}

/// @nodoc
class __$$_CartProductIdsCopyWithImpl<$Res>
    extends _$CartProductIdsCopyWithImpl<$Res, _$_CartProductIds>
    implements _$$_CartProductIdsCopyWith<$Res> {
  __$$_CartProductIdsCopyWithImpl(
      _$_CartProductIds _value, $Res Function(_$_CartProductIds) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productId = null,
    Object? count = null,
  }) {
    return _then(_$_CartProductIds(
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CartProductIds implements _CartProductIds {
  const _$_CartProductIds(
      {@JsonKey(name: 'product_id') required this.productId,
      required this.count});

  factory _$_CartProductIds.fromJson(Map<String, dynamic> json) =>
      _$$_CartProductIdsFromJson(json);

  @override
  @JsonKey(name: 'product_id')
  final String productId;
  @override
  final int count;

  @override
  String toString() {
    return 'CartProductIds(productId: $productId, count: $count)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CartProductIds &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            (identical(other.count, count) || other.count == count));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, productId, count);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CartProductIdsCopyWith<_$_CartProductIds> get copyWith =>
      __$$_CartProductIdsCopyWithImpl<_$_CartProductIds>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CartProductIdsToJson(
      this,
    );
  }
}

abstract class _CartProductIds implements CartProductIds {
  const factory _CartProductIds(
      {@JsonKey(name: 'product_id') required final String productId,
      required final int count}) = _$_CartProductIds;

  factory _CartProductIds.fromJson(Map<String, dynamic> json) =
      _$_CartProductIds.fromJson;

  @override
  @JsonKey(name: 'product_id')
  String get productId;
  @override
  int get count;
  @override
  @JsonKey(ignore: true)
  _$$_CartProductIdsCopyWith<_$_CartProductIds> get copyWith =>
      throw _privateConstructorUsedError;
}

CartProduct _$CartProductFromJson(Map<String, dynamic> json) {
  return _CartProduct.fromJson(json);
}

/// @nodoc
mixin _$CartProduct {
  Product get product => throw _privateConstructorUsedError;
  int get count => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CartProductCopyWith<CartProduct> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartProductCopyWith<$Res> {
  factory $CartProductCopyWith(
          CartProduct value, $Res Function(CartProduct) then) =
      _$CartProductCopyWithImpl<$Res, CartProduct>;
  @useResult
  $Res call({Product product, int count});

  $ProductCopyWith<$Res> get product;
}

/// @nodoc
class _$CartProductCopyWithImpl<$Res, $Val extends CartProduct>
    implements $CartProductCopyWith<$Res> {
  _$CartProductCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = null,
    Object? count = null,
  }) {
    return _then(_value.copyWith(
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as Product,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ProductCopyWith<$Res> get product {
    return $ProductCopyWith<$Res>(_value.product, (value) {
      return _then(_value.copyWith(product: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_CartProductCopyWith<$Res>
    implements $CartProductCopyWith<$Res> {
  factory _$$_CartProductCopyWith(
          _$_CartProduct value, $Res Function(_$_CartProduct) then) =
      __$$_CartProductCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Product product, int count});

  @override
  $ProductCopyWith<$Res> get product;
}

/// @nodoc
class __$$_CartProductCopyWithImpl<$Res>
    extends _$CartProductCopyWithImpl<$Res, _$_CartProduct>
    implements _$$_CartProductCopyWith<$Res> {
  __$$_CartProductCopyWithImpl(
      _$_CartProduct _value, $Res Function(_$_CartProduct) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = null,
    Object? count = null,
  }) {
    return _then(_$_CartProduct(
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as Product,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CartProduct implements _CartProduct {
  const _$_CartProduct({required this.product, required this.count});

  factory _$_CartProduct.fromJson(Map<String, dynamic> json) =>
      _$$_CartProductFromJson(json);

  @override
  final Product product;
  @override
  final int count;

  @override
  String toString() {
    return 'CartProduct(product: $product, count: $count)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CartProduct &&
            (identical(other.product, product) || other.product == product) &&
            (identical(other.count, count) || other.count == count));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, product, count);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CartProductCopyWith<_$_CartProduct> get copyWith =>
      __$$_CartProductCopyWithImpl<_$_CartProduct>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CartProductToJson(
      this,
    );
  }
}

abstract class _CartProduct implements CartProduct {
  const factory _CartProduct(
      {required final Product product,
      required final int count}) = _$_CartProduct;

  factory _CartProduct.fromJson(Map<String, dynamic> json) =
      _$_CartProduct.fromJson;

  @override
  Product get product;
  @override
  int get count;
  @override
  @JsonKey(ignore: true)
  _$$_CartProductCopyWith<_$_CartProduct> get copyWith =>
      throw _privateConstructorUsedError;
}
