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
    int? id,
    String? price,
    num? discount,
    @JsonKey(name: "old_price") String? oldPrice,
    String? name,
    String? article,
    String? picture,
    required List<Badge> badges,
    num? rating,
    @JsonKey(name: "reviews_count") int? reviewsCount,
    required String brand,
  }) = _Product;

  factory Product.fromJson(Map<String, Object?> json) =>
      _$ProductFromJson(json);
}

@freezed
class ProductCardDTO with _$ProductCardDTO {
  const factory ProductCardDTO({
    int? id,
    List<ProductProperty>? parameters,
    String? picture,
    List<Category>? categories,
    required List<Badge> badges,
    required String price,
    @JsonKey(name: "old_price") String? oldPrice,
    required String brand,
    String? article,
    String? name,
    String? description,
    bool? available,
    num? discount,
    int? sort,
    num? rating,
    @JsonKey(name: "reviews_count") int? reviewsCount,
    @JsonKey(name: "need_buy_to_wholesale") int? needBuyToWholesale,
    @JsonKey(name: "wholesale_discount") int? wholesaleDiscount,
  }) = _ProductCardDTO;

  factory ProductCardDTO.fromJson(Map<String, Object?> json) =>
      _$ProductCardDTOFromJson(json);

}


@freezed
class Badge with _$Badge {
  const factory Badge({
    required int id,
    @JsonKey(name:'text_color') String? textColor,
    @JsonKey(name:'bg_color') String? bgColor,
    String? text,
    String? picture,
  }) = _Badge;

  factory Badge.fromJson(Map<String, Object?> json) =>
      _$BadgeFromJson(json);
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
