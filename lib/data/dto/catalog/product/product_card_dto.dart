import 'package:shop/data/dto/catalog/categories/categories_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_card_dto.freezed.dart';

part 'product_card_dto.g.dart';


@freezed
class ProductCardDTO with _$ProductCardDTO {
  const factory ProductCardDTO({
    int? id,
    List<ProductProperty>? parameters,
    String? picture,
    List<Category>? categories,
    required List<Badge> badges,
    required String price,
    @JsonValue("old_price") String? oldPrice,
    required String brand,
    String? article,
    String? name,
    String? description,
    bool? available,
    num? discount,
    int? sort,
    num? rating,
    @JsonValue("reviews_count") int? reviewsCount,
    @JsonValue("need_buy_to_wholesale") int? needBuyToWholesale,
    @JsonValue("wholesale_discount") int? wholesaleDiscount,

  }) = _ProductCardDTO;

  factory ProductCardDTO.fromJson(Map<String, Object?> json) =>
      _$ProductCardDTOFromJson(json);
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


