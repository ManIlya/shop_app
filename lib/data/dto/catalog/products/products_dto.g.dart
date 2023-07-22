// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'products_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProductsSerializerRequest _$$_ProductsSerializerRequestFromJson(
        Map<String, dynamic> json) =>
    _$_ProductsSerializerRequest(
      cityFias: json['city_fias'] as String?,
      brand: json['brand'] as String?,
      categoryIds: (json['category_ids'] as List<dynamic>?)
          ?.map((e) => e as int)
          .toList(),
      productIds: (json['product_ids'] as List<dynamic>?)
          ?.map((e) => e as int)
          .toList(),
      search: json['search'] as String?,
      sortBy: $enumDecodeNullable(_$SortByEnumEnumMap, json['sort_by']),
    );

Map<String, dynamic> _$$_ProductsSerializerRequestToJson(
        _$_ProductsSerializerRequest instance) =>
    <String, dynamic>{
      'city_fias': instance.cityFias,
      'brand': instance.brand,
      'category_ids': instance.categoryIds,
      'product_ids': instance.productIds,
      'search': instance.search,
      'sort_by': _$SortByEnumEnumMap[instance.sortBy],
    };

const _$SortByEnumEnumMap = {
  SortByEnum.popularity: 'popularity',
  SortByEnum.ascPrice: 'asc_price',
  SortByEnum.descPrice: 'desc_price',
  SortByEnum.ascDiscount: 'asc_discount',
  SortByEnum.descDiscount: 'desc_discount',
};

_$_ProductsDTO _$$_ProductsDTOFromJson(Map<String, dynamic> json) =>
    _$_ProductsDTO(
      count: json['count'] as int,
      next: json['next'] as String?,
      previous: json['previous'] as String?,
      results: (json['results'] as List<dynamic>)
          .map((e) => Product.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ProductsDTOToJson(_$_ProductsDTO instance) =>
    <String, dynamic>{
      'count': instance.count,
      'next': instance.next,
      'previous': instance.previous,
      'results': instance.results,
    };

_$_Product _$$_ProductFromJson(Map<String, dynamic> json) => _$_Product(
      id: json['id'] as int,
      price: Decimal.fromJson(json['price'] as String),
      badges: (json['badges'] as List<dynamic>)
          .map((e) => Badge.fromJson(e as Map<String, dynamic>))
          .toList(),
      name: json['name'] as String,
      brand: json['brand'] as String?,
      picture: json['picture'] as String?,
      article: json['article'] as String?,
      description: json['description'] as String?,
      available: json['available'] as bool?,
      rating: (json['rating'] as num?)?.toDouble(),
      oldPrice: json['old_price'] == null
          ? null
          : Decimal.fromJson(json['old_price'] as String),
      reviewsCount: json['reviews_count'] as int?,
      cityFias: json['city_fias'] as String?,
    );

Map<String, dynamic> _$$_ProductToJson(_$_Product instance) =>
    <String, dynamic>{
      'id': instance.id,
      'price': instance.price,
      'badges': instance.badges,
      'name': instance.name,
      'brand': instance.brand,
      'picture': instance.picture,
      'article': instance.article,
      'description': instance.description,
      'available': instance.available,
      'rating': instance.rating,
      'old_price': instance.oldPrice,
      'reviews_count': instance.reviewsCount,
      'city_fias': instance.cityFias,
    };

_$_Badge _$$_BadgeFromJson(Map<String, dynamic> json) => _$_Badge(
      id: json['id'] as int,
      textColor: json['text_color'] as String?,
      bgColor: json['bg_color'] as String?,
      text: json['text'] as String?,
      picture: json['picture'] as String?,
    );

Map<String, dynamic> _$$_BadgeToJson(_$_Badge instance) => <String, dynamic>{
      'id': instance.id,
      'text_color': instance.textColor,
      'bg_color': instance.bgColor,
      'text': instance.text,
      'picture': instance.picture,
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
