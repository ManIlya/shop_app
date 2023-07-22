import 'package:decimal/decimal.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shop/data/dto/catalog/categories/categories_dto.dart';

part 'products_dto.freezed.dart';

part 'products_dto.g.dart';

@freezed
class ProductsSerializerRequest with _$ProductsSerializerRequest {
  const factory ProductsSerializerRequest(
          {@JsonKey(name: 'city_fias') String? cityFias,
          String? brand,
          @JsonKey(name: 'category_ids') List<int>? categoryIds,
          @JsonKey(name: 'product_ids') List<int>? productIds,
          String? search,
          @JsonKey(name: 'sort_by') SortByEnum? sortBy}) =
      _ProductsSerializerRequest;

  factory ProductsSerializerRequest.fromJson(Map<String, Object?> json) =>
      _$ProductsSerializerRequestFromJson(json);
}

enum SortByEnum {
  @JsonValue('popularity')
  popularity,
  @JsonValue('asc_price')
  ascPrice,
  @JsonValue('desc_price')
  descPrice,
  @JsonValue('asc_discount')
  ascDiscount,
  @JsonValue('desc_discount')
  descDiscount,
}

@freezed
class ProductsDTO with _$ProductsDTO {
  const factory ProductsDTO({
    required int count,
    String? next,
    String? previous,
    required List<Product> results,
  }) = _ProductsDTO;

  factory ProductsDTO.fromJson(Map<String, Object?> json) =>
      _$ProductsDTOFromJson(json);
}

@freezed
class Product with _$Product {
  const factory Product({
    required int id,
    required Decimal price,
    required List<Badge> badges,
    required String name,
    String? brand,
    String? picture,
    String? article,
    String? description,
    bool? available,
    double? rating,
    @JsonKey(name: 'old_price') Decimal? oldPrice,
    @JsonKey(name: 'reviews_count') int? reviewsCount,
    @JsonKey(name: 'city_fias') String? cityFias,
  }) = _Product;

  factory Product.fromJson(Map<String, Object?> json) =>
      _$ProductFromJson(json);
}

@freezed
class Badge with _$Badge {
  const factory Badge({
    required int id,
    @JsonKey(name: 'text_color') String? textColor,
    @JsonKey(name: 'bg_color') String? bgColor,
    String? text,
    String? picture,
  }) = _Badge;

  factory Badge.fromJson(Map<String, Object?> json) => _$BadgeFromJson(json);
}

@freezed
class ProductProperty with _$ProductProperty {
  const factory ProductProperty({
    required int id,
    required String name,
    required String value,
    required int product,
  }) = _ProductProperty;

  factory ProductProperty.fromJson(Map<String, Object?> json) =>
      _$ProductPropertyFromJson(json);
}
