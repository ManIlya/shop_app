import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop/data/dto/request_calculated_cart.dart';
import 'package:shop/pages/order_page/order_bloc.dart';
import 'package:shop/utils/app_components.dart';
import 'package:shop/widgets/my_cupertino_navigator_bar.dart';

@RoutePage()
class OrderPage extends StatelessWidget {
  OrderPage({required this.products, super.key});

  final List<CartProductIds> products;
  final cartService = AppComponents().cartUseCase;
  final catalogService = AppComponents().catalogService;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<OrderBloc>(
      create: (BuildContext context) => OrderBloc(
        products: products,
        cartService: cartService,
        catalogService: catalogService,
      ),
      child: Builder(
        builder: (context) {
          return SafeArea(
            child: CupertinoPageScaffold(
              navigationBar: MyCupertinoNavigatorBar(
                middle: Text('Оформление заказа'),
              ),
              child: Column(
                children: [
                  Flexible(
                    flex: 1,
                    child: BlocBuilder<OrderBloc, OrderState>(
                      builder: (context, state) {
                        // В зависимости от текущего состояния, отображаем различные виджеты
                        if (state is InitOrderState) {
                          // Отображение начального состояния
                          return Center(
                            child: Text('Initial State'),
                          );
                        } else if (state is DeliveryOrderState) {
                          // Отображение состояния с информацией о доставке
                          return Center(
                            child: Text('Delivery State'),
                          );
                        } else if (state is PaymentsOrderState) {
                          // Отображение состояния с информацией о платежах
                          return Center(
                            child: Text('Payments State'),
                          );
                        }
                        return Container(
                          child: Text('Пусто'),
                        ); // Вернуть пустой контейнер по умолчанию
                      },
                    ),
                  ),
                  Flexible(
                    flex: 0,
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 16, horizontal: 15),
                      decoration: BoxDecoration(
                        color: CupertinoTheme.of(context).scaffoldBackgroundColor,
                        // Цвет
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 4,
                            offset: const Offset(0, -2),
                          ),
                        ],
                      ),
                      child: CupertinoButton.filled(
                        borderRadius: BorderRadius.zero,
                        child: Text('Оформить заказ'),
                        onPressed: () {
                          context.read<OrderBloc>().add(LoadDeliveryOrderEvent());
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        }
      ),
    );
  }
}
