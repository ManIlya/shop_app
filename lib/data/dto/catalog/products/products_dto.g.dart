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
      id: json['id'] as int?,
      price: json['price'] as String?,
      discount: json['discount'] as num?,
      oldPrice: json['oldPrice'] as String?,
      name: json['name'] as String?,
      article: json['article'] as String?,
      picture: json['picture'] as String?,
      badges: (json['badges'] as List<dynamic>)
          .map((e) => Badge.fromJson(e as Map<String, dynamic>))
          .toList(),
      rating: json['rating'] as num?,
      reviewsCount: json['reviewsCount'] as int?,
      brand: json['brand'] as String,
    );

Map<String, dynamic> _$$_ProductToJson(_$_Product instance) =>
    <String, dynamic>{
      'id': instance.id,
      'price': instance.price,
      'discount': instance.discount,
      'oldPrice': instance.oldPrice,
      'name': instance.name,
      'article': instance.article,
      'picture': instance.picture,
      'badges': instance.badges,
      'rating': instance.rating,
      'reviewsCount': instance.reviewsCount,
      'brand': instance.brand,
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
