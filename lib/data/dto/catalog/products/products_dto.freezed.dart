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
  int get id => throw _privateConstructorUsedError;
  Decimal get price => throw _privateConstructorUsedError;
  List<Badge> get badges => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get brand => throw _privateConstructorUsedError;
  String? get picture => throw _privateConstructorUsedError;
  String? get article => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  bool? get available => throw _privateConstructorUsedError;
  double? get rating => throw _privateConstructorUsedError;
  @JsonKey(name: 'old_price')
  Decimal? get oldPrice => throw _privateConstructorUsedError;
  @JsonKey(name: 'reviews_count')
  int? get reviewsCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'city_fias')
  String? get cityFias => throw _privateConstructorUsedError;

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
      {int id,
      Decimal price,
      List<Badge> badges,
      String name,
      String? brand,
      String? picture,
      String? article,
      String? description,
      bool? available,
      double? rating,
      @JsonKey(name: 'old_price') Decimal? oldPrice,
      @JsonKey(name: 'reviews_count') int? reviewsCount,
      @JsonKey(name: 'city_fias') String? cityFias});
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
    Object? id = null,
    Object? price = null,
    Object? badges = null,
    Object? name = null,
    Object? brand = freezed,
    Object? picture = freezed,
    Object? article = freezed,
    Object? description = freezed,
    Object? available = freezed,
    Object? rating = freezed,
    Object? oldPrice = freezed,
    Object? reviewsCount = freezed,
    Object? cityFias = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as Decimal,
      badges: null == badges
          ? _value.badges
          : badges // ignore: cast_nullable_to_non_nullable
              as List<Badge>,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      brand: freezed == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as String?,
      picture: freezed == picture
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as String?,
      article: freezed == article
          ? _value.article
          : article // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      available: freezed == available
          ? _value.available
          : available // ignore: cast_nullable_to_non_nullable
              as bool?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double?,
      oldPrice: freezed == oldPrice
          ? _value.oldPrice
          : oldPrice // ignore: cast_nullable_to_non_nullable
              as Decimal?,
      reviewsCount: freezed == reviewsCount
          ? _value.reviewsCount
          : reviewsCount // ignore: cast_nullable_to_non_nullable
              as int?,
      cityFias: freezed == cityFias
          ? _value.cityFias
          : cityFias // ignore: cast_nullable_to_non_nullable
              as String?,
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
      {int id,
      Decimal price,
      List<Badge> badges,
      String name,
      String? brand,
      String? picture,
      String? article,
      String? description,
      bool? available,
      double? rating,
      @JsonKey(name: 'old_price') Decimal? oldPrice,
      @JsonKey(name: 'reviews_count') int? reviewsCount,
      @JsonKey(name: 'city_fias') String? cityFias});
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
    Object? id = null,
    Object? price = null,
    Object? badges = null,
    Object? name = null,
    Object? brand = freezed,
    Object? picture = freezed,
    Object? article = freezed,
    Object? description = freezed,
    Object? available = freezed,
    Object? rating = freezed,
    Object? oldPrice = freezed,
    Object? reviewsCount = freezed,
    Object? cityFias = freezed,
  }) {
    return _then(_$_Product(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as Decimal,
      badges: null == badges
          ? _value._badges
          : badges // ignore: cast_nullable_to_non_nullable
              as List<Badge>,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      brand: freezed == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as String?,
      picture: freezed == picture
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as String?,
      article: freezed == article
          ? _value.article
          : article // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      available: freezed == available
          ? _value.available
          : available // ignore: cast_nullable_to_non_nullable
              as bool?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double?,
      oldPrice: freezed == oldPrice
          ? _value.oldPrice
          : oldPrice // ignore: cast_nullable_to_non_nullable
              as Decimal?,
      reviewsCount: freezed == reviewsCount
          ? _value.reviewsCount
          : reviewsCount // ignore: cast_nullable_to_non_nullable
              as int?,
      cityFias: freezed == cityFias
          ? _value.cityFias
          : cityFias // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Product implements _Product {
  const _$_Product(
      {required this.id,
      required this.price,
      required final List<Badge> badges,
      required this.name,
      this.brand,
      this.picture,
      this.article,
      this.description,
      this.available,
      this.rating,
      @JsonKey(name: 'old_price') this.oldPrice,
      @JsonKey(name: 'reviews_count') this.reviewsCount,
      @JsonKey(name: 'city_fias') this.cityFias})
      : _badges = badges;

  factory _$_Product.fromJson(Map<String, dynamic> json) =>
      _$$_ProductFromJson(json);

  @override
  final int id;
  @override
  final Decimal price;
  final List<Badge> _badges;
  @override
  List<Badge> get badges {
    if (_badges is EqualUnmodifiableListView) return _badges;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_badges);
  }

  @override
  final String name;
  @override
  final String? brand;
  @override
  final String? picture;
  @override
  final String? article;
  @override
  final String? description;
  @override
  final bool? available;
  @override
  final double? rating;
  @override
  @JsonKey(name: 'old_price')
  final Decimal? oldPrice;
  @override
  @JsonKey(name: 'reviews_count')
  final int? reviewsCount;
  @override
  @JsonKey(name: 'city_fias')
  final String? cityFias;

  @override
  String toString() {
    return 'Product(id: $id, price: $price, badges: $badges, name: $name, brand: $brand, picture: $picture, article: $article, description: $description, available: $available, rating: $rating, oldPrice: $oldPrice, reviewsCount: $reviewsCount, cityFias: $cityFias)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Product &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.price, price) || other.price == price) &&
            const DeepCollectionEquality().equals(other._badges, _badges) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.brand, brand) || other.brand == brand) &&
            (identical(other.picture, picture) || other.picture == picture) &&
            (identical(other.article, article) || other.article == article) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.available, available) ||
                other.available == available) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.oldPrice, oldPrice) ||
                other.oldPrice == oldPrice) &&
            (identical(other.reviewsCount, reviewsCount) ||
                other.reviewsCount == reviewsCount) &&
            (identical(other.cityFias, cityFias) ||
                other.cityFias == cityFias));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      price,
      const DeepCollectionEquality().hash(_badges),
      name,
      brand,
      picture,
      article,
      description,
      available,
      rating,
      oldPrice,
      reviewsCount,
      cityFias);

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
      {required final int id,
      required final Decimal price,
      required final List<Badge> badges,
      required final String name,
      final String? brand,
      final String? picture,
      final String? article,
      final String? description,
      final bool? available,
      final double? rating,
      @JsonKey(name: 'old_price') final Decimal? oldPrice,
      @JsonKey(name: 'reviews_count') final int? reviewsCount,
      @JsonKey(name: 'city_fias') final String? cityFias}) = _$_Product;

  factory _Product.fromJson(Map<String, dynamic> json) = _$_Product.fromJson;

  @override
  int get id;
  @override
  Decimal get price;
  @override
  List<Badge> get badges;
  @override
  String get name;
  @override
  String? get brand;
  @override
  String? get picture;
  @override
  String? get article;
  @override
  String? get description;
  @override
  bool? get available;
  @override
  double? get rating;
  @override
  @JsonKey(name: 'old_price')
  Decimal? get oldPrice;
  @override
  @JsonKey(name: 'reviews_count')
  int? get reviewsCount;
  @override
  @JsonKey(name: 'city_fias')
  String? get cityFias;
  @override
  @JsonKey(ignore: true)
  _$$_ProductCopyWith<_$_Product> get copyWith =>
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
