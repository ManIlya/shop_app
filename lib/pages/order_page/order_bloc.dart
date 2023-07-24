import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shop/data/dto/deliveries.dart';
import 'package:shop/data/dto/request_calculated_cart.dart';
import 'package:shop/data/remote/catalog_service.dart';
import 'package:shop/data/repository/cart_use_case.dart';

part 'order_bloc.freezed.dart';

@freezed
class OrderState with _$OrderState {
  const factory OrderState.init({
    required List<CartProductIds> products,
  }) = InitOrderState;

  const factory OrderState.deliveries({
    required List<CartProductIds> products,
    required List<Delivery> deliveries,
    required Delivery delivery,
    required DateTime deliveryDate,
  }) = DeliveryOrderState;

  const factory OrderState.payments({
    required List<CartProductIds> products,
    required List<Delivery> deliveries,
    required Delivery delivery,
    required List<Payment> payments,
    required Payment payment,
  }) = PaymentsOrderState;
}

@freezed
class OrderEvent with _$OrderEvent {
  const factory OrderEvent.loadDelivery() = LoadDeliveryOrderEvent;

  const factory OrderEvent.selectDelivery({
    required Delivery delivery,
  }) = SelectDeliveryOrderEvent;

  const factory OrderEvent.selectPayment({
    required Payment payment,
  }) = SelectPaymentOrderEvent;

  const factory OrderEvent.orderCreate({
    required String name,
    required String phone,
    required String email,
    required String comment,
  }) = OrderCreateOrderEvent;
}

class OrderBloc extends Bloc<OrderEvent, OrderState> {
  final CatalogService catalogService;
  final CartUseCase cartService;

  OrderBloc({
    required List<CartProductIds> products,
    required this.cartService,
    required this.catalogService,
  }) : super(
    OrderState.init(
      products: products,
    ),
  ) {
    on<OrderEvent>(
            (event, emit) async {
          switch (event) {
            case LoadDeliveryOrderEvent():
              await _loadDeliveries(event, emit);
              break;
            case SelectDeliveryOrderEvent():
              break;
            case SelectPaymentOrderEvent():
              break;
            case OrderCreateOrderEvent():
              break;
          }
        },
        transformer: sequential(),
    );
  }

  Future<void> _loadDeliveries(
      LoadDeliveryOrderEvent event,
      Emitter<OrderState> emit,
      ) async {
    final deliveries = await catalogService.getDeliveries(
      request: DeliveriesRequest(
        products: state.products,
      ),
    );
    emit(
      DeliveryOrderState(
        products: state.products,
        deliveries: deliveries,
        delivery: deliveries.first,
        deliveryDate: DateTime.now(),
      ),
    );
    final payments = await catalogService.getPayments(
      request: PaymentsRequest(
        products: state.products,
        deliveryId: (state as DeliveryOrderState).delivery.id,
      ),
    );
    emit(
      DeliveryOrderState(
        products: state.products,
        deliveries: deliveries,
        delivery: deliveries.first,
        deliveryDate: DateTime.now(),
      ),
    );
  }
}
