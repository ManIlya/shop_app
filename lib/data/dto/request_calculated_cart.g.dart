// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'request_calculated_cart.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RequestCalculatedCart _$$_RequestCalculatedCartFromJson(
        Map<String, dynamic> json) =>
    _$_RequestCalculatedCart(
      promocode: json['promocode'] as String?,
      cityFias: json['city_fias'] as String?,
    );

Map<String, dynamic> _$$_RequestCalculatedCartToJson(
    _$_RequestCalculatedCart instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('promocode', instance.promocode);
  writeNotNull('city_fias', instance.cityFias);
  return val;
}

_$_CalculatedCart _$$_CalculatedCartFromJson(Map<String, dynamic> json) =>
    _$_CalculatedCart(
      price: json['price'] as String,
      oldPrice: json['old_price'] as String?,
      count: json['count'] as int,
      products: (json['products'] as List<dynamic>)
          .map((e) => CartProduct.fromJson(e as Map<String, dynamic>))
          .toList(),
      applied: json['applied'] as bool?,
    );

Map<String, dynamic> _$$_CalculatedCartToJson(_$_CalculatedCart instance) =>
    <String, dynamic>{
      'price': instance.price,
      'old_price': instance.oldPrice,
      'count': instance.count,
      'products': instance.products,
      'applied': instance.applied,
    };

_$_CartProductIds _$$_CartProductIdsFromJson(Map<String, dynamic> json) =>
    _$_CartProductIds(
      productId: json['product_id'] as String,
      count: json['count'] as int,
    );

Map<String, dynamic> _$$_CartProductIdsToJson(_$_CartProductIds instance) =>
    <String, dynamic>{
      'product_id': instance.productId,
      'count': instance.count,
    };

_$_CartProduct _$$_CartProductFromJson(Map<String, dynamic> json) =>
    _$_CartProduct(
      product: Product.fromJson(json['product'] as Map<String, dynamic>),
      count: json['count'] as int,
    );

Map<String, dynamic> _$$_CartProductToJson(_$_CartProduct instance) =>
    <String, dynamic>{
      'product': instance.product,
      'count': instance.count,
    };
