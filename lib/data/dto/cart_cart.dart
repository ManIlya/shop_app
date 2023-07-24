import 'package:freezed_annotation/freezed_annotation.dart';

part 'cart_cart.freezed.dart';

part 'cart_cart.g.dart';

@freezed
class CartAdd with _$CartAdd {
  const factory CartAdd({
    @JsonKey(name: 'product_id') required int productId,
    @JsonKey(name: 'city_fias', includeIfNull: false) String? cityFias,
  }) = _CartAdd;

  factory CartAdd.fromJson(Map<String, Object?> json) =>
      _$CartAddFromJson(json);
}

@freezed
class CartUpdate with _$CartUpdate {
  const factory CartUpdate({
    @JsonKey(name: 'product_id') required int productId,
    @JsonKey(name: 'count', includeIfNull: false) int? count,
    @JsonKey(name: 'city_fias', includeIfNull: false) String? cityFias,
  }) = _CartUpdate;

  factory CartUpdate.fromJson(Map<String, Object?> json) =>
      _$CartUpdateFromJson(json);
}