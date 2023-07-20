import 'package:freezed_annotation/freezed_annotation.dart';

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
    int? id,
    String? price,
    num? discount,
    @JsonValue("old_price") String? oldPrice,
    String? name,
    String? article,
    String? picture,
    required List<Badge> badges,
    num? rating,
    @JsonValue("reviews_count") int? reviewsCount,
    required String brand,

  }) = _Product;

  factory Product.fromJson(Map<String, Object?> json) =>
      _$ProductFromJson(json);
}


@freezed
class Badge with _$Badge {
  const factory Badge({
    required int id,
    @JsonValue('text_color') String? textColor,
    @JsonValue('bg_color') String? bgColor,
    String? text,
    String? picture,
  }) = _Badge;

  factory Badge.fromJson(Map<String, Object?> json) =>
      _$BadgeFromJson(json);
}