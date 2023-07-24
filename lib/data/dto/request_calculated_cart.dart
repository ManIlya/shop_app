import 'package:freezed_annotation/freezed_annotation.dart';

import 'products_dto.dart';

part 'request_calculated_cart.freezed.dart';

part 'request_calculated_cart.g.dart';

@freezed
class RequestCalculatedCart with _$RequestCalculatedCart {
  factory RequestCalculatedCart({
    @JsonKey(name: 'promocode', includeIfNull: false) String? promocode,
    @JsonKey(name: 'city_fias', includeIfNull: false) String? cityFias,
  }) = _RequestCalculatedCart;

  factory RequestCalculatedCart.fromJson(Map<String, Object?> json) =>
      _$RequestCalculatedCartFromJson(json);
}

@freezed
class CalculatedCart with _$CalculatedCart {
  const factory CalculatedCart({
    required String price,
    @JsonKey(name: 'old_price') String? oldPrice,
    required int count,
    required List<CartProduct> products,
    bool? applied,

  }) = _CalculatedCart;

  factory CalculatedCart.fromJson(Map<String, Object?> json) =>
      _$CalculatedCartFromJson(json);
}

@freezed
class CartProductIds with _$CartProductIds {
  const factory CartProductIds({
    @JsonKey(name: 'product_id') required String productId,
    required int count,
  }) = _CartProductIds;

  factory CartProductIds.fromJson(Map<String, Object?> json) =>
      _$CartProductIdsFromJson(json);
}
@freezed
class CartProduct with _$CartProduct {
  const factory CartProduct({
    required Product product,
    required int count,
  }) = _CartProduct;

  factory CartProduct.fromJson(Map<String, Object?> json) =>
      _$CartProductFromJson(json);
}
