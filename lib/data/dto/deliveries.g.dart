// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'deliveries.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DeliveriesRequest _$$_DeliveriesRequestFromJson(Map<String, dynamic> json) =>
    _$_DeliveriesRequest(
      cityFias: json['city_fias'] as String?,
      products: (json['products'] as List<dynamic>?)
          ?.map((e) => CartProductIds.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_DeliveriesRequestToJson(
    _$_DeliveriesRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('city_fias', instance.cityFias);
  val['products'] = instance.products;
  return val;
}

_$_Delivery _$$_DeliveryFromJson(Map<String, dynamic> json) => _$_Delivery(
      id: json['id'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      type: json['type'] as String,
      icon: json['icon'] as String,
      locations: (json['locations'] as List<dynamic>?)
          ?.map((e) => DeliveryPoint.fromJson(e as Map<String, dynamic>))
          .toList(),
      farmAddress: json['farm_address'] as String?,
    );

Map<String, dynamic> _$$_DeliveryToJson(_$_Delivery instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'type': instance.type,
      'icon': instance.icon,
      'locations': instance.locations,
      'farm_address': instance.farmAddress,
    };

_$_DeliveryPoint _$$_DeliveryPointFromJson(Map<String, dynamic> json) =>
    _$_DeliveryPoint(
      id: json['id'] as String,
      name: json['name'] as String?,
      address: json['address'] as String?,
      phone: json['phone'] as String?,
      lon: json['lon'] as num,
      lat: json['lat'] as num,
      workHouse: json['work_house'] as String?,
      paymentAllowed: json['payment_allowed'] as bool?,
    );

Map<String, dynamic> _$$_DeliveryPointToJson(_$_DeliveryPoint instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'address': instance.address,
      'phone': instance.phone,
      'lon': instance.lon,
      'lat': instance.lat,
      'work_house': instance.workHouse,
      'payment_allowed': instance.paymentAllowed,
    };

_$_Payment _$$_PaymentFromJson(Map<String, dynamic> json) => _$_Payment(
      id: json['id'] as String,
      title: json['title'] as String,
      type: json['type'] as String,
      description: json['description'] as String,
      icon: json['icon'] as String,
    );

Map<String, dynamic> _$$_PaymentToJson(_$_Payment instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'type': instance.type,
      'description': instance.description,
      'icon': instance.icon,
    };

_$_PaymentsRequest _$$_PaymentsRequestFromJson(Map<String, dynamic> json) =>
    _$_PaymentsRequest(
      cityFias: json['city_fias'] as String?,
      products: (json['products'] as List<dynamic>)
          .map((e) => CartProductIds.fromJson(e as Map<String, dynamic>))
          .toList(),
      deliveryId: json['deliveryId'] as String,
    );

Map<String, dynamic> _$$_PaymentsRequestToJson(_$_PaymentsRequest instance) =>
    <String, dynamic>{
      'city_fias': instance.cityFias,
      'products': instance.products,
      'deliveryId': instance.deliveryId,
    };
