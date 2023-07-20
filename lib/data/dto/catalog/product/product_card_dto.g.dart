// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_card_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProductCardDTO _$$_ProductCardDTOFromJson(Map<String, dynamic> json) =>
    _$_ProductCardDTO(
      id: json['id'] as int?,
      parameters: (json['parameters'] as List<dynamic>?)
          ?.map((e) => ProductProperty.fromJson(e as Map<String, dynamic>))
          .toList(),
      picture: json['picture'] as String?,
      categories: (json['categories'] as List<dynamic>?)
          ?.map((e) => Category.fromJson(e as Map<String, dynamic>))
          .toList(),
      badges: (json['badges'] as List<dynamic>)
          .map((e) => Badge.fromJson(e as Map<String, dynamic>))
          .toList(),
      price: json['price'] as String,
      oldPrice: json['oldPrice'] as String?,
      brand: json['brand'] as String,
      article: json['article'] as String?,
      name: json['name'] as String?,
      description: json['description'] as String?,
      available: json['available'] as bool?,
      discount: json['discount'] as num?,
      sort: json['sort'] as int?,
      rating: json['rating'] as num?,
      reviewsCount: json['reviewsCount'] as int?,
      needBuyToWholesale: json['needBuyToWholesale'] as int?,
      wholesaleDiscount: json['wholesaleDiscount'] as int?,
    );

Map<String, dynamic> _$$_ProductCardDTOToJson(_$_ProductCardDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'parameters': instance.parameters,
      'picture': instance.picture,
      'categories': instance.categories,
      'badges': instance.badges,
      'price': instance.price,
      'oldPrice': instance.oldPrice,
      'brand': instance.brand,
      'article': instance.article,
      'name': instance.name,
      'description': instance.description,
      'available': instance.available,
      'discount': instance.discount,
      'sort': instance.sort,
      'rating': instance.rating,
      'reviewsCount': instance.reviewsCount,
      'needBuyToWholesale': instance.needBuyToWholesale,
      'wholesaleDiscount': instance.wholesaleDiscount,
    };

_$_ProductProperty _$$_ProductPropertyFromJson(Map<String, dynamic> json) =>
    _$_ProductProperty(
      id: json['id'] as int,
      name: json['name'] as String,
      value: json['value'] as String,
      product: json['product'] as int,
    );

Map<String, dynamic> _$$_ProductPropertyToJson(_$_ProductProperty instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'value': instance.value,
      'product': instance.product,
    };

_$_Badge _$$_BadgeFromJson(Map<String, dynamic> json) => _$_Badge(
      id: json['id'] as int,
      textColor: json['textColor'] as String?,
      bgColor: json['bgColor'] as String?,
      text: json['text'] as String?,
      picture: json['picture'] as String?,
    );

Map<String, dynamic> _$$_BadgeToJson(_$_Badge instance) => <String, dynamic>{
      'id': instance.id,
      'textColor': instance.textColor,
      'bgColor': instance.bgColor,
      'text': instance.text,
      'picture': instance.picture,
    };
