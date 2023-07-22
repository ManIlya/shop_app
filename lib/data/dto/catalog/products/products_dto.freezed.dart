// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'products_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProductsSerializerRequest _$ProductsSerializerRequestFromJson(
    Map<String, dynamic> json) {
  return _ProductsSerializerRequest.fromJson(json);
}

/// @nodoc
mixin _$ProductsSerializerRequest {
  @JsonKey(name: 'city_fias')
  String? get cityFias => throw _privateConstructorUsedError;
  String? get brand => throw _privateConstructorUsedError;
  @JsonKey(name: 'category_ids')
  List<int>? get categoryIds => throw _privateConstructorUsedError;
  @JsonKey(name: 'product_ids')
  List<int>? get productIds => throw _privateConstructorUsedError;
  String? get search => throw _privateConstructorUsedError;
  @JsonKey(name: 'sort_by')
  SortByEnum? get sortBy => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductsSerializerRequestCopyWith<ProductsSerializerRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductsSerializerRequestCopyWith<$Res> {
  factory $ProductsSerializerRequestCopyWith(ProductsSerializerRequest value,
          $Res Function(ProductsSerializerRequest) then) =
      _$ProductsSerializerRequestCopyWithImpl<$Res, ProductsSerializerRequest>;
  @useResult
  $Res call(
      {@JsonKey(name: 'city_fias') String? cityFias,
      String? brand,
      @JsonKey(name: 'category_ids') List<int>? categoryIds,
      @JsonKey(name: 'product_ids') List<int>? productIds,
      String? search,
      @JsonKey(name: 'sort_by') SortByEnum? sortBy});
}

/// @nodoc
class _$ProductsSerializerRequestCopyWithImpl<$Res,
        $Val extends ProductsSerializerRequest>
    implements $ProductsSerializerRequestCopyWith<$Res> {
  _$ProductsSerializerRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cityFias = freezed,
    Object? brand = freezed,
    Object? categoryIds = freezed,
    Object? productIds = freezed,
    Object? search = freezed,
    Object? sortBy = freezed,
  }) {
    return _then(_value.copyWith(
      cityFias: freezed == cityFias
          ? _value.cityFias
          : cityFias // ignore: cast_nullable_to_non_nullable
              as String?,
      brand: freezed == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as String?,
      categoryIds: freezed == categoryIds
          ? _value.categoryIds
          : categoryIds // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      productIds: freezed == productIds
          ? _value.productIds
          : productIds // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      search: freezed == search
          ? _value.search
          : search // ignore: cast_nullable_to_non_nullable
              as String?,
      sortBy: freezed == sortBy
          ? _value.sortBy
          : sortBy // ignore: cast_nullable_to_non_nullable
              as SortByEnum?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ProductsSerializerRequestCopyWith<$Res>
    implements $ProductsSerializerRequestCopyWith<$Res> {
  factory _$$_ProductsSerializerRequestCopyWith(
          _$_ProductsSerializerRequest value,
          $Res Function(_$_ProductsSerializerRequest) then) =
      __$$_ProductsSerializerRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'city_fias') String? cityFias,
      String? brand,
      @JsonKey(name: 'category_ids') List<int>? categoryIds,
      @JsonKey(name: 'product_ids') List<int>? productIds,
      String? search,
      @JsonKey(name: 'sort_by') SortByEnum? sortBy});
}

/// @nodoc
class __$$_ProductsSerializerRequestCopyWithImpl<$Res>
    extends _$ProductsSerializerRequestCopyWithImpl<$Res,
        _$_ProductsSerializerRequest>
    implements _$$_ProductsSerializerRequestCopyWith<$Res> {
  __$$_ProductsSerializerRequestCopyWithImpl(
      _$_ProductsSerializerRequest _value,
      $Res Function(_$_ProductsSerializerRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cityFias = freezed,
    Object? brand = freezed,
    Object? categoryIds = freezed,
    Object? productIds = freezed,
    Object? search = freezed,
    Object? sortBy = freezed,
  }) {
    return _then(_$_ProductsSerializerRequest(
      cityFias: freezed == cityFias
          ? _value.cityFias
          : cityFias // ignore: cast_nullable_to_non_nullable
              as String?,
      brand: freezed == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as String?,
      categoryIds: freezed == categoryIds
          ? _value._categoryIds
          : categoryIds // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      productIds: freezed == productIds
          ? _value._productIds
          : productIds // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      search: freezed == search
          ? _value.search
          : search // ignore: cast_nullable_to_non_nullable
              as String?,
      sortBy: freezed == sortBy
          ? _value.sortBy
          : sortBy // ignore: cast_nullable_to_non_nullable
              as SortByEnum?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProductsSerializerRequest implements _ProductsSerializerRequest {
  const _$_ProductsSerializerRequest(
      {@JsonKey(name: 'city_fias') this.cityFias,
      this.brand,
      @JsonKey(name: 'category_ids') final List<int>? categoryIds,
      @JsonKey(name: 'product_ids') final List<int>? productIds,
      this.search,
      @JsonKey(name: 'sort_by') this.sortBy})
      : _categoryIds = categoryIds,
        _productIds = productIds;

  factory _$_ProductsSerializerRequest.fromJson(Map<String, dynamic> json) =>
      _$$_ProductsSerializerRequestFromJson(json);

  @override
  @JsonKey(name: 'city_fias')
  final String? cityFias;
  @override
  final String? brand;
  final List<int>? _categoryIds;
  @override
  @JsonKey(name: 'category_ids')
  List<int>? get categoryIds {
    final value = _categoryIds;
    if (value == null) return null;
    if (_categoryIds is EqualUnmodifiableListView) return _categoryIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<int>? _productIds;
  @override
  @JsonKey(name: 'product_ids')
  List<int>? get productIds {
    final value = _productIds;
    if (value == null) return null;
    if (_productIds is EqualUnmodifiableListView) return _productIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? search;
  @override
  @JsonKey(name: 'sort_by')
  final SortByEnum? sortBy;

  @override
  String toString() {
    return 'ProductsSerializerRequest(cityFias: $cityFias, brand: $brand, categoryIds: $categoryIds, productIds: $productIds, search: $search, sortBy: $sortBy)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProductsSerializerRequest &&
            (identical(other.cityFias, cityFias) ||
                other.cityFias == cityFias) &&
            (identical(other.brand, brand) || other.brand == brand) &&
            const DeepCollectionEquality()
                .equals(other._categoryIds, _categoryIds) &&
            const DeepCollectionEquality()
                .equals(other._productIds, _productIds) &&
            (identical(other.search, search) || other.search == search) &&
            (identical(other.sortBy, sortBy) || other.sortBy == sortBy));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      cityFias,
      brand,
      const DeepCollectionEquality().hash(_categoryIds),
      const DeepCollectionEquality().hash(_productIds),
      search,
      sortBy);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProductsSerializerRequestCopyWith<_$_ProductsSerializerRequest>
      get copyWith => __$$_ProductsSerializerRequestCopyWithImpl<
          _$_ProductsSerializerRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProductsSerializerRequestToJson(
      this,
    );
  }
}

abstract class _ProductsSerializerRequest implements ProductsSerializerRequest {
  const factory _ProductsSerializerRequest(
          {@JsonKey(name: 'city_fias') final String? cityFias,
          final String? brand,
          @JsonKey(name: 'category_ids') final List<int>? categoryIds,
          @JsonKey(name: 'product_ids') final List<int>? productIds,
          final String? search,
          @JsonKey(name: 'sort_by') final SortByEnum? sortBy}) =
      _$_ProductsSerializerRequest;

  factory _ProductsSerializerRequest.fromJson(Map<String, dynamic> json) =
      _$_ProductsSerializerRequest.fromJson;

  @override
  @JsonKey(name: 'city_fias')
  String? get cityFias;
  @override
  String? get brand;
  @override
  @JsonKey(name: 'category_ids')
  List<int>? get categoryIds;
  @override
  @JsonKey(name: 'product_ids')
  List<int>? get productIds;
  @override
  String? get search;
  @override
  @JsonKey(name: 'sort_by')
  SortByEnum? get sortBy;
  @override
  @JsonKey(ignore: true)
  _$$_ProductsSerializerRequestCopyWith<_$_ProductsSerializerRequest>
      get copyWith => throw _privateConstructorUsedError;
}

ProductsDTO _$ProductsDTOFromJson(Map<String, dynamic> json) {
  return _ProductsDTO.fromJson(json);
}

/// @nodoc
mixin _$ProductsDTO {
  int get count => throw _privateConstructorUsedError;
  String? get next => throw _privateConstructorUsedError;
  String? get previous => throw _privateConstructorUsedError;
  List<Product> get results => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductsDTOCopyWith<ProductsDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductsDTOCopyWith<$Res> {
  factory $ProductsDTOCopyWith(
          ProductsDTO value, $Res Function(ProductsDTO) then) =
      _$ProductsDTOCopyWithImpl<$Res, ProductsDTO>;
  @useResult
  $Res call({int count, String? next, String? previous, List<Product> results});
}

/// @nodoc
class _$ProductsDTOCopyWithImpl<$Res, $Val extends ProductsDTO>
    implements $ProductsDTOCopyWith<$Res> {
  _$ProductsDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
    Object? next = freezed,
    Object? previous = freezed,
    Object? results = null,
  }) {
    return _then(_value.copyWith(
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      next: freezed == next
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as String?,
      previous: freezed == previous
          ? _value.previous
          : previous // ignore: cast_nullable_to_non_nullable
              as String?,
      results: null == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<Product>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ProductsDTOCopyWith<$Res>
    implements $ProductsDTOCopyWith<$Res> {
  factory _$$_ProductsDTOCopyWith(
          _$_ProductsDTO value, $Res Function(_$_ProductsDTO) then) =
      __$$_ProductsDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int count, String? next, String? previous, List<Product> results});
}

/// @nodoc
class __$$_ProductsDTOCopyWithImpl<$Res>
    extends _$ProductsDTOCopyWithImpl<$Res, _$_ProductsDTO>
    implements _$$_ProductsDTOCopyWith<$Res> {
  __$$_ProductsDTOCopyWithImpl(
      _$_ProductsDTO _value, $Res Function(_$_ProductsDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
    Object? next = freezed,
    Object? previous = freezed,
    Object? results = null,
  }) {
    return _then(_$_ProductsDTO(
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      next: freezed == next
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as String?,
      previous: freezed == previous
          ? _value.previous
          : previous // ignore: cast_nullable_to_non_nullable
              as String?,
      results: null == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<Product>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProductsDTO implements _ProductsDTO {
  const _$_ProductsDTO(
      {required this.count,
      this.next,
      this.previous,
      required final List<Product> results})
      : _results = results;

  factory _$_ProductsDTO.fromJson(Map<String, dynamic> json) =>
      _$$_ProductsDTOFromJson(json);

  @override
  final int count;
  @override
  final String? next;
  @override
  final String? previous;
  final List<Product> _results;
  @override
  List<Product> get results {
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  String toString() {
    return 'ProductsDTO(count: $count, next: $next, previous: $previous, results: $results)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProductsDTO &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.next, next) || other.next == next) &&
            (identical(other.previous, previous) ||
                other.previous == previous) &&
            const DeepCollectionEquality().equals(other._results, _results));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, count, next, previous,
      const DeepCollectionEquality().hash(_results));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProductsDTOCopyWith<_$_ProductsDTO> get copyWith =>
      __$$_ProductsDTOCopyWithImpl<_$_ProductsDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProductsDTOToJson(
      this,
    );
  }
}

abstract class _ProductsDTO implements ProductsDTO {
  const factory _ProductsDTO(
      {required final int count,
      final String? next,
      final String? previous,
      required final List<Product> results}) = _$_ProductsDTO;

  factory _ProductsDTO.fromJson(Map<String, dynamic> json) =
      _$_ProductsDTO.fromJson;

  @override
  int get count;
  @override
  String? get next;
  @override
  String? get previous;
  @override
  List<Product> get results;
  @override
  @JsonKey(ignore: true)
  _$$_ProductsDTOCopyWith<_$_ProductsDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

Product _$ProductFromJson(Map<String, dynamic> json) {
  return _Product.fromJson(json);
}

/// @nodoc
mixin _$Product {
  int? get id => throw _privateConstructorUsedError;
  String? get price => throw _privateConstructorUsedError;
  num? get discount => throw _privateConstructorUsedError;
  @JsonKey(name: "old_price")
  String? get oldPrice => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get article => throw _privateConstructorUsedError;
  String? get picture => throw _privateConstructorUsedError;
  List<Badge> get badges => throw _privateConstructorUsedError;
  num? get rating => throw _privateConstructorUsedError;
  @JsonKey(name: "reviews_count")
  int? get reviewsCount => throw _privateConstructorUsedError;
  String get brand => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductCopyWith<Product> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductCopyWith<$Res> {
  factory $ProductCopyWith(Product value, $Res Function(Product) then) =
      _$ProductCopyWithImpl<$Res, Product>;
  @useResult
  $Res call(
      {int? id,
      String? price,
      num? discount,
      @JsonKey(name: "old_price") String? oldPrice,
      String? name,
      String? article,
      String? picture,
      List<Badge> badges,
      num? rating,
      @JsonKey(name: "reviews_count") int? reviewsCount,
      String brand});
}

/// @nodoc
class _$ProductCopyWithImpl<$Res, $Val extends Product>
    implements $ProductCopyWith<$Res> {
  _$ProductCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? price = freezed,
    Object? discount = freezed,
    Object? oldPrice = freezed,
    Object? name = freezed,
    Object? article = freezed,
    Object? picture = freezed,
    Object? badges = null,
    Object? rating = freezed,
    Object? reviewsCount = freezed,
    Object? brand = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String?,
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as num?,
      oldPrice: freezed == oldPrice
          ? _value.oldPrice
          : oldPrice // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      article: freezed == article
          ? _value.article
          : article // ignore: cast_nullable_to_non_nullable
              as String?,
      picture: freezed == picture
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as String?,
      badges: null == badges
          ? _value.badges
          : badges // ignore: cast_nullable_to_non_nullable
              as List<Badge>,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as num?,
      reviewsCount: freezed == reviewsCount
          ? _value.reviewsCount
          : reviewsCount // ignore: cast_nullable_to_non_nullable
              as int?,
      brand: null == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ProductCopyWith<$Res> implements $ProductCopyWith<$Res> {
  factory _$$_ProductCopyWith(
          _$_Product value, $Res Function(_$_Product) then) =
      __$$_ProductCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? price,
      num? discount,
      @JsonKey(name: "old_price") String? oldPrice,
      String? name,
      String? article,
      String? picture,
      List<Badge> badges,
      num? rating,
      @JsonKey(name: "reviews_count") int? reviewsCount,
      String brand});
}

/// @nodoc
class __$$_ProductCopyWithImpl<$Res>
    extends _$ProductCopyWithImpl<$Res, _$_Product>
    implements _$$_ProductCopyWith<$Res> {
  __$$_ProductCopyWithImpl(_$_Product _value, $Res Function(_$_Product) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? price = freezed,
    Object? discount = freezed,
    Object? oldPrice = freezed,
    Object? name = freezed,
    Object? article = freezed,
    Object? picture = freezed,
    Object? badges = null,
    Object? rating = freezed,
    Object? reviewsCount = freezed,
    Object? brand = null,
  }) {
    return _then(_$_Product(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String?,
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as num?,
      oldPrice: freezed == oldPrice
          ? _value.oldPrice
          : oldPrice // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      article: freezed == article
          ? _value.article
          : article // ignore: cast_nullable_to_non_nullable
              as String?,
      picture: freezed == picture
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as String?,
      badges: null == badges
          ? _value._badges
          : badges // ignore: cast_nullable_to_non_nullable
              as List<Badge>,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as num?,
      reviewsCount: freezed == reviewsCount
          ? _value.reviewsCount
          : reviewsCount // ignore: cast_nullable_to_non_nullable
              as int?,
      brand: null == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Product implements _Product {
  const _$_Product(
      {this.id,
      this.price,
      this.discount,
      @JsonKey(name: "old_price") this.oldPrice,
      this.name,
      this.article,
      this.picture,
      required final List<Badge> badges,
      this.rating,
      @JsonKey(name: "reviews_count") this.reviewsCount,
      required this.brand})
      : _badges = badges;

  factory _$_Product.fromJson(Map<String, dynamic> json) =>
      _$$_ProductFromJson(json);

  @override
  final int? id;
  @override
  final String? price;
  @override
  final num? discount;
  @override
  @JsonKey(name: "old_price")
  final String? oldPrice;
  @override
  final String? name;
  @override
  final String? article;
  @override
  final String? picture;
  final List<Badge> _badges;
  @override
  List<Badge> get badges {
    if (_badges is EqualUnmodifiableListView) return _badges;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_badges);
  }

  @override
  final num? rating;
  @override
  @JsonKey(name: "reviews_count")
  final int? reviewsCount;
  @override
  final String brand;

  @override
  String toString() {
    return 'Product(id: $id, price: $price, discount: $discount, oldPrice: $oldPrice, name: $name, article: $article, picture: $picture, badges: $badges, rating: $rating, reviewsCount: $reviewsCount, brand: $brand)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Product &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.discount, discount) ||
                other.discount == discount) &&
            (identical(other.oldPrice, oldPrice) ||
                other.oldPrice == oldPrice) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.article, article) || other.article == article) &&
            (identical(other.picture, picture) || other.picture == picture) &&
            const DeepCollectionEquality().equals(other._badges, _badges) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.reviewsCount, reviewsCount) ||
                other.reviewsCount == reviewsCount) &&
            (identical(other.brand, brand) || other.brand == brand));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      price,
      discount,
      oldPrice,
      name,
      article,
      picture,
      const DeepCollectionEquality().hash(_badges),
      rating,
      reviewsCount,
      brand);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProductCopyWith<_$_Product> get copyWith =>
      __$$_ProductCopyWithImpl<_$_Product>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProductToJson(
      this,
    );
  }
}

abstract class _Product implements Product {
  const factory _Product(
      {final int? id,
      final String? price,
      final num? discount,
      @JsonKey(name: "old_price") final String? oldPrice,
      final String? name,
      final String? article,
      final String? picture,
      required final List<Badge> badges,
      final num? rating,
      @JsonKey(name: "reviews_count") final int? reviewsCount,
      required final String brand}) = _$_Product;

  factory _Product.fromJson(Map<String, dynamic> json) = _$_Product.fromJson;

  @override
  int? get id;
  @override
  String? get price;
  @override
  num? get discount;
  @override
  @JsonKey(name: "old_price")
  String? get oldPrice;
  @override
  String? get name;
  @override
  String? get article;
  @override
  String? get picture;
  @override
  List<Badge> get badges;
  @override
  num? get rating;
  @override
  @JsonKey(name: "reviews_count")
  int? get reviewsCount;
  @override
  String get brand;
  @override
  @JsonKey(ignore: true)
  _$$_ProductCopyWith<_$_Product> get copyWith =>
      throw _privateConstructorUsedError;
}

ProductCardDTO _$ProductCardDTOFromJson(Map<String, dynamic> json) {
  return _ProductCardDTO.fromJson(json);
}

/// @nodoc
mixin _$ProductCardDTO {
  int? get id => throw _privateConstructorUsedError;
  List<ProductProperty>? get parameters => throw _privateConstructorUsedError;
  String? get picture => throw _privateConstructorUsedError;
  List<Category>? get categories => throw _privateConstructorUsedError;
  List<Badge> get badges => throw _privateConstructorUsedError;
  String get price => throw _privateConstructorUsedError;
  @JsonKey(name: "old_price")
  String? get oldPrice => throw _privateConstructorUsedError;
  String get brand => throw _privateConstructorUsedError;
  String? get article => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  bool? get available => throw _privateConstructorUsedError;
  num? get discount => throw _privateConstructorUsedError;
  int? get sort => throw _privateConstructorUsedError;
  num? get rating => throw _privateConstructorUsedError;
  @JsonKey(name: "reviews_count")
  int? get reviewsCount => throw _privateConstructorUsedError;
  @JsonKey(name: "need_buy_to_wholesale")
  int? get needBuyToWholesale => throw _privateConstructorUsedError;
  @JsonKey(name: "wholesale_discount")
  int? get wholesaleDiscount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductCardDTOCopyWith<ProductCardDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductCardDTOCopyWith<$Res> {
  factory $ProductCardDTOCopyWith(
          ProductCardDTO value, $Res Function(ProductCardDTO) then) =
      _$ProductCardDTOCopyWithImpl<$Res, ProductCardDTO>;
  @useResult
  $Res call(
      {int? id,
      List<ProductProperty>? parameters,
      String? picture,
      List<Category>? categories,
      List<Badge> badges,
      String price,
      @JsonKey(name: "old_price") String? oldPrice,
      String brand,
      String? article,
      String? name,
      String? description,
      bool? available,
      num? discount,
      int? sort,
      num? rating,
      @JsonKey(name: "reviews_count") int? reviewsCount,
      @JsonKey(name: "need_buy_to_wholesale") int? needBuyToWholesale,
      @JsonKey(name: "wholesale_discount") int? wholesaleDiscount});
}

/// @nodoc
class _$ProductCardDTOCopyWithImpl<$Res, $Val extends ProductCardDTO>
    implements $ProductCardDTOCopyWith<$Res> {
  _$ProductCardDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? parameters = freezed,
    Object? picture = freezed,
    Object? categories = freezed,
    Object? badges = null,
    Object? price = null,
    Object? oldPrice = freezed,
    Object? brand = null,
    Object? article = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? available = freezed,
    Object? discount = freezed,
    Object? sort = freezed,
    Object? rating = freezed,
    Object? reviewsCount = freezed,
    Object? needBuyToWholesale = freezed,
    Object? wholesaleDiscount = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      parameters: freezed == parameters
          ? _value.parameters
          : parameters // ignore: cast_nullable_to_non_nullable
              as List<ProductProperty>?,
      picture: freezed == picture
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as String?,
      categories: freezed == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<Category>?,
      badges: null == badges
          ? _value.badges
          : badges // ignore: cast_nullable_to_non_nullable
              as List<Badge>,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String,
      oldPrice: freezed == oldPrice
          ? _value.oldPrice
          : oldPrice // ignore: cast_nullable_to_non_nullable
              as String?,
      brand: null == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as String,
      article: freezed == article
          ? _value.article
          : article // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      available: freezed == available
          ? _value.available
          : available // ignore: cast_nullable_to_non_nullable
              as bool?,
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as num?,
      sort: freezed == sort
          ? _value.sort
          : sort // ignore: cast_nullable_to_non_nullable
              as int?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as num?,
      reviewsCount: freezed == reviewsCount
          ? _value.reviewsCount
          : reviewsCount // ignore: cast_nullable_to_non_nullable
              as int?,
      needBuyToWholesale: freezed == needBuyToWholesale
          ? _value.needBuyToWholesale
          : needBuyToWholesale // ignore: cast_nullable_to_non_nullable
              as int?,
      wholesaleDiscount: freezed == wholesaleDiscount
          ? _value.wholesaleDiscount
          : wholesaleDiscount // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ProductCardDTOCopyWith<$Res>
    implements $ProductCardDTOCopyWith<$Res> {
  factory _$$_ProductCardDTOCopyWith(
          _$_ProductCardDTO value, $Res Function(_$_ProductCardDTO) then) =
      __$$_ProductCardDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      List<ProductProperty>? parameters,
      String? picture,
      List<Category>? categories,
      List<Badge> badges,
      String price,
      @JsonKey(name: "old_price") String? oldPrice,
      String brand,
      String? article,
      String? name,
      String? description,
      bool? available,
      num? discount,
      int? sort,
      num? rating,
      @JsonKey(name: "reviews_count") int? reviewsCount,
      @JsonKey(name: "need_buy_to_wholesale") int? needBuyToWholesale,
      @JsonKey(name: "wholesale_discount") int? wholesaleDiscount});
}

/// @nodoc
class __$$_ProductCardDTOCopyWithImpl<$Res>
    extends _$ProductCardDTOCopyWithImpl<$Res, _$_ProductCardDTO>
    implements _$$_ProductCardDTOCopyWith<$Res> {
  __$$_ProductCardDTOCopyWithImpl(
      _$_ProductCardDTO _value, $Res Function(_$_ProductCardDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? parameters = freezed,
    Object? picture = freezed,
    Object? categories = freezed,
    Object? badges = null,
    Object? price = null,
    Object? oldPrice = freezed,
    Object? brand = null,
    Object? article = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? available = freezed,
    Object? discount = freezed,
    Object? sort = freezed,
    Object? rating = freezed,
    Object? reviewsCount = freezed,
    Object? needBuyToWholesale = freezed,
    Object? wholesaleDiscount = freezed,
  }) {
    return _then(_$_ProductCardDTO(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      parameters: freezed == parameters
          ? _value._parameters
          : parameters // ignore: cast_nullable_to_non_nullable
              as List<ProductProperty>?,
      picture: freezed == picture
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as String?,
      categories: freezed == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<Category>?,
      badges: null == badges
          ? _value._badges
          : badges // ignore: cast_nullable_to_non_nullable
              as List<Badge>,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String,
      oldPrice: freezed == oldPrice
          ? _value.oldPrice
          : oldPrice // ignore: cast_nullable_to_non_nullable
              as String?,
      brand: null == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as String,
      article: freezed == article
          ? _value.article
          : article // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      available: freezed == available
          ? _value.available
          : available // ignore: cast_nullable_to_non_nullable
              as bool?,
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as num?,
      sort: freezed == sort
          ? _value.sort
          : sort // ignore: cast_nullable_to_non_nullable
              as int?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as num?,
      reviewsCount: freezed == reviewsCount
          ? _value.reviewsCount
          : reviewsCount // ignore: cast_nullable_to_non_nullable
              as int?,
      needBuyToWholesale: freezed == needBuyToWholesale
          ? _value.needBuyToWholesale
          : needBuyToWholesale // ignore: cast_nullable_to_non_nullable
              as int?,
      wholesaleDiscount: freezed == wholesaleDiscount
          ? _value.wholesaleDiscount
          : wholesaleDiscount // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProductCardDTO implements _ProductCardDTO {
  const _$_ProductCardDTO(
      {this.id,
      final List<ProductProperty>? parameters,
      this.picture,
      final List<Category>? categories,
      required final List<Badge> badges,
      required this.price,
      @JsonKey(name: "old_price") this.oldPrice,
      required this.brand,
      this.article,
      this.name,
      this.description,
      this.available,
      this.discount,
      this.sort,
      this.rating,
      @JsonKey(name: "reviews_count") this.reviewsCount,
      @JsonKey(name: "need_buy_to_wholesale") this.needBuyToWholesale,
      @JsonKey(name: "wholesale_discount") this.wholesaleDiscount})
      : _parameters = parameters,
        _categories = categories,
        _badges = badges;

  factory _$_ProductCardDTO.fromJson(Map<String, dynamic> json) =>
      _$$_ProductCardDTOFromJson(json);

  @override
  final int? id;
  final List<ProductProperty>? _parameters;
  @override
  List<ProductProperty>? get parameters {
    final value = _parameters;
    if (value == null) return null;
    if (_parameters is EqualUnmodifiableListView) return _parameters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? picture;
  final List<Category>? _categories;
  @override
  List<Category>? get categories {
    final value = _categories;
    if (value == null) return null;
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Badge> _badges;
  @override
  List<Badge> get badges {
    if (_badges is EqualUnmodifiableListView) return _badges;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_badges);
  }

  @override
  final String price;
  @override
  @JsonKey(name: "old_price")
  final String? oldPrice;
  @override
  final String brand;
  @override
  final String? article;
  @override
  final String? name;
  @override
  final String? description;
  @override
  final bool? available;
  @override
  final num? discount;
  @override
  final int? sort;
  @override
  final num? rating;
  @override
  @JsonKey(name: "reviews_count")
  final int? reviewsCount;
  @override
  @JsonKey(name: "need_buy_to_wholesale")
  final int? needBuyToWholesale;
  @override
  @JsonKey(name: "wholesale_discount")
  final int? wholesaleDiscount;

  @override
  String toString() {
    return 'ProductCardDTO(id: $id, parameters: $parameters, picture: $picture, categories: $categories, badges: $badges, price: $price, oldPrice: $oldPrice, brand: $brand, article: $article, name: $name, description: $description, available: $available, discount: $discount, sort: $sort, rating: $rating, reviewsCount: $reviewsCount, needBuyToWholesale: $needBuyToWholesale, wholesaleDiscount: $wholesaleDiscount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProductCardDTO &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._parameters, _parameters) &&
            (identical(other.picture, picture) || other.picture == picture) &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories) &&
            const DeepCollectionEquality().equals(other._badges, _badges) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.oldPrice, oldPrice) ||
                other.oldPrice == oldPrice) &&
            (identical(other.brand, brand) || other.brand == brand) &&
            (identical(other.article, article) || other.article == article) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.available, available) ||
                other.available == available) &&
            (identical(other.discount, discount) ||
                other.discount == discount) &&
            (identical(other.sort, sort) || other.sort == sort) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.reviewsCount, reviewsCount) ||
                other.reviewsCount == reviewsCount) &&
            (identical(other.needBuyToWholesale, needBuyToWholesale) ||
                other.needBuyToWholesale == needBuyToWholesale) &&
            (identical(other.wholesaleDiscount, wholesaleDiscount) ||
                other.wholesaleDiscount == wholesaleDiscount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_parameters),
      picture,
      const DeepCollectionEquality().hash(_categories),
      const DeepCollectionEquality().hash(_badges),
      price,
      oldPrice,
      brand,
      article,
      name,
      description,
      available,
      discount,
      sort,
      rating,
      reviewsCount,
      needBuyToWholesale,
      wholesaleDiscount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProductCardDTOCopyWith<_$_ProductCardDTO> get copyWith =>
      __$$_ProductCardDTOCopyWithImpl<_$_ProductCardDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProductCardDTOToJson(
      this,
    );
  }
}

abstract class _ProductCardDTO implements ProductCardDTO {
  const factory _ProductCardDTO(
          {final int? id,
          final List<ProductProperty>? parameters,
          final String? picture,
          final List<Category>? categories,
          required final List<Badge> badges,
          required final String price,
          @JsonKey(name: "old_price") final String? oldPrice,
          required final String brand,
          final String? article,
          final String? name,
          final String? description,
          final bool? available,
          final num? discount,
          final int? sort,
          final num? rating,
          @JsonKey(name: "reviews_count") final int? reviewsCount,
          @JsonKey(name: "need_buy_to_wholesale") final int? needBuyToWholesale,
          @JsonKey(name: "wholesale_discount") final int? wholesaleDiscount}) =
      _$_ProductCardDTO;

  factory _ProductCardDTO.fromJson(Map<String, dynamic> json) =
      _$_ProductCardDTO.fromJson;

  @override
  int? get id;
  @override
  List<ProductProperty>? get parameters;
  @override
  String? get picture;
  @override
  List<Category>? get categories;
  @override
  List<Badge> get badges;
  @override
  String get price;
  @override
  @JsonKey(name: "old_price")
  String? get oldPrice;
  @override
  String get brand;
  @override
  String? get article;
  @override
  String? get name;
  @override
  String? get description;
  @override
  bool? get available;
  @override
  num? get discount;
  @override
  int? get sort;
  @override
  num? get rating;
  @override
  @JsonKey(name: "reviews_count")
  int? get reviewsCount;
  @override
  @JsonKey(name: "need_buy_to_wholesale")
  int? get needBuyToWholesale;
  @override
  @JsonKey(name: "wholesale_discount")
  int? get wholesaleDiscount;
  @override
  @JsonKey(ignore: true)
  _$$_ProductCardDTOCopyWith<_$_ProductCardDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

Badge _$BadgeFromJson(Map<String, dynamic> json) {
  return _Badge.fromJson(json);
}

/// @nodoc
mixin _$Badge {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'text_color')
  String? get textColor => throw _privateConstructorUsedError;
  @JsonKey(name: 'bg_color')
  String? get bgColor => throw _privateConstructorUsedError;
  String? get text => throw _privateConstructorUsedError;
  String? get picture => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BadgeCopyWith<Badge> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BadgeCopyWith<$Res> {
  factory $BadgeCopyWith(Badge value, $Res Function(Badge) then) =
      _$BadgeCopyWithImpl<$Res, Badge>;
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'text_color') String? textColor,
      @JsonKey(name: 'bg_color') String? bgColor,
      String? text,
      String? picture});
}

/// @nodoc
class _$BadgeCopyWithImpl<$Res, $Val extends Badge>
    implements $BadgeCopyWith<$Res> {
  _$BadgeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? textColor = freezed,
    Object? bgColor = freezed,
    Object? text = freezed,
    Object? picture = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      textColor: freezed == textColor
          ? _value.textColor
          : textColor // ignore: cast_nullable_to_non_nullable
              as String?,
      bgColor: freezed == bgColor
          ? _value.bgColor
          : bgColor // ignore: cast_nullable_to_non_nullable
              as String?,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      picture: freezed == picture
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BadgeCopyWith<$Res> implements $BadgeCopyWith<$Res> {
  factory _$$_BadgeCopyWith(_$_Badge value, $Res Function(_$_Badge) then) =
      __$$_BadgeCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'text_color') String? textColor,
      @JsonKey(name: 'bg_color') String? bgColor,
      String? text,
      String? picture});
}

/// @nodoc
class __$$_BadgeCopyWithImpl<$Res> extends _$BadgeCopyWithImpl<$Res, _$_Badge>
    implements _$$_BadgeCopyWith<$Res> {
  __$$_BadgeCopyWithImpl(_$_Badge _value, $Res Function(_$_Badge) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? textColor = freezed,
    Object? bgColor = freezed,
    Object? text = freezed,
    Object? picture = freezed,
  }) {
    return _then(_$_Badge(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      textColor: freezed == textColor
          ? _value.textColor
          : textColor // ignore: cast_nullable_to_non_nullable
              as String?,
      bgColor: freezed == bgColor
          ? _value.bgColor
          : bgColor // ignore: cast_nullable_to_non_nullable
              as String?,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      picture: freezed == picture
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Badge implements _Badge {
  const _$_Badge(
      {required this.id,
      @JsonKey(name: 'text_color') this.textColor,
      @JsonKey(name: 'bg_color') this.bgColor,
      this.text,
      this.picture});

  factory _$_Badge.fromJson(Map<String, dynamic> json) =>
      _$$_BadgeFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'text_color')
  final String? textColor;
  @override
  @JsonKey(name: 'bg_color')
  final String? bgColor;
  @override
  final String? text;
  @override
  final String? picture;

  @override
  String toString() {
    return 'Badge(id: $id, textColor: $textColor, bgColor: $bgColor, text: $text, picture: $picture)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Badge &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.textColor, textColor) ||
                other.textColor == textColor) &&
            (identical(other.bgColor, bgColor) || other.bgColor == bgColor) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.picture, picture) || other.picture == picture));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, textColor, bgColor, text, picture);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BadgeCopyWith<_$_Badge> get copyWith =>
      __$$_BadgeCopyWithImpl<_$_Badge>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BadgeToJson(
      this,
    );
  }
}

abstract class _Badge implements Badge {
  const factory _Badge(
      {required final int id,
      @JsonKey(name: 'text_color') final String? textColor,
      @JsonKey(name: 'bg_color') final String? bgColor,
      final String? text,
      final String? picture}) = _$_Badge;

  factory _Badge.fromJson(Map<String, dynamic> json) = _$_Badge.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: 'text_color')
  String? get textColor;
  @override
  @JsonKey(name: 'bg_color')
  String? get bgColor;
  @override
  String? get text;
  @override
  String? get picture;
  @override
  @JsonKey(ignore: true)
  _$$_BadgeCopyWith<_$_Badge> get copyWith =>
      throw _privateConstructorUsedError;
}

ProductProperty _$ProductPropertyFromJson(Map<String, dynamic> json) {
  return _ProductProperty.fromJson(json);
}

/// @nodoc
mixin _$ProductProperty {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get value => throw _privateConstructorUsedError;
  int get product => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductPropertyCopyWith<ProductProperty> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductPropertyCopyWith<$Res> {
  factory $ProductPropertyCopyWith(
          ProductProperty value, $Res Function(ProductProperty) then) =
      _$ProductPropertyCopyWithImpl<$Res, ProductProperty>;
  @useResult
  $Res call({int id, String name, String value, int product});
}

/// @nodoc
class _$ProductPropertyCopyWithImpl<$Res, $Val extends ProductProperty>
    implements $ProductPropertyCopyWith<$Res> {
  _$ProductPropertyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? value = null,
    Object? product = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ProductPropertyCopyWith<$Res>
    implements $ProductPropertyCopyWith<$Res> {
  factory _$$_ProductPropertyCopyWith(
          _$_ProductProperty value, $Res Function(_$_ProductProperty) then) =
      __$$_ProductPropertyCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name, String value, int product});
}

/// @nodoc
class __$$_ProductPropertyCopyWithImpl<$Res>
    extends _$ProductPropertyCopyWithImpl<$Res, _$_ProductProperty>
    implements _$$_ProductPropertyCopyWith<$Res> {
  __$$_ProductPropertyCopyWithImpl(
      _$_ProductProperty _value, $Res Function(_$_ProductProperty) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? value = null,
    Object? product = null,
  }) {
    return _then(_$_ProductProperty(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProductProperty implements _ProductProperty {
  const _$_ProductProperty(
      {required this.id,
      required this.name,
      required this.value,
      required this.product});

  factory _$_ProductProperty.fromJson(Map<String, dynamic> json) =>
      _$$_ProductPropertyFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String value;
  @override
  final int product;

  @override
  String toString() {
    return 'ProductProperty(id: $id, name: $name, value: $value, product: $product)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProductProperty &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.product, product) || other.product == product));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, value, product);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProductPropertyCopyWith<_$_ProductProperty> get copyWith =>
      __$$_ProductPropertyCopyWithImpl<_$_ProductProperty>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProductPropertyToJson(
      this,
    );
  }
}

abstract class _ProductProperty implements ProductProperty {
  const factory _ProductProperty(
      {required final int id,
      required final String name,
      required final String value,
      required final int product}) = _$_ProductProperty;

  factory _ProductProperty.fromJson(Map<String, dynamic> json) =
      _$_ProductProperty.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get value;
  @override
  int get product;
  @override
  @JsonKey(ignore: true)
  _$$_ProductPropertyCopyWith<_$_ProductProperty> get copyWith =>
      throw _privateConstructorUsedError;
}
