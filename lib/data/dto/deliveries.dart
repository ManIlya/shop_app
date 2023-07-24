import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shop/data/dto/request_calculated_cart.dart';

part 'deliveries.freezed.dart';

part 'deliveries.g.dart';

@freezed
class DeliveriesRequest with _$DeliveriesRequest {
  const factory DeliveriesRequest({
    @JsonKey(name: 'city_fias', includeIfNull: false) String? cityFias,
    @JsonKey(name: 'products') List<CartProductIds>? products,
  }) = _DeliveriesRequest;

  factory DeliveriesRequest.fromJson(Map<String, Object?> json) =>
      _$DeliveriesRequestFromJson(json);
}

@freezed
class Delivery with _$Delivery {
  const factory Delivery({
    @JsonKey(name: 'id') required String id,
    @JsonKey(name: 'title') required String title,
    @JsonKey(name: 'description') required String description,
    @JsonKey(name: 'type') required String type,
    @JsonKey(name: 'icon') required String icon,
    @JsonKey(name: 'locations') List<DeliveryPoint>? locations,
    @JsonKey(name: 'farm_address') String? farmAddress,
  }) = _Delivery;

  factory Delivery.fromJson(Map<String, Object?> json) =>
      _$DeliveryFromJson(json);
}

@freezed
class DeliveryPoint with _$DeliveryPoint {
  const factory DeliveryPoint({
    @JsonKey(name: 'id') required String id,
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'address') String? address,
    @JsonKey(name: 'phone') String? phone,
    @JsonKey(name: 'lon') required num lon,
    @JsonKey(name: 'lat') required num lat,
    @JsonKey(name: 'work_house') String? workHouse,
    @JsonKey(name: 'payment_allowed') bool? paymentAllowed,
  }) = _DeliveryPoint;

  factory DeliveryPoint.fromJson(Map<String, Object?> json) =>
      _$DeliveryPointFromJson(json);
}

@freezed
class Payment with _$Payment {
  factory Payment({
    required String id,
    required String title,
    required String type,
    required String description,
    required String icon,
  }) = _Payment;

  factory Payment.fromJson(Map<String, dynamic> json) =>
      _$PaymentFromJson(json);
}


@freezed
class PaymentsRequest with _$PaymentsRequest {
  factory PaymentsRequest({
    @JsonKey(name: 'city_fias', includeIfNull: true) String? cityFias,
    required List<CartProductIds> products,
    required String deliveryId,
  }) = _PaymentsRequest;

  factory PaymentsRequest.fromJson(Map<String, dynamic> json) =>
      _$PaymentsRequestFromJson(json);
}