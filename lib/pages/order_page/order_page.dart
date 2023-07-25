import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop/data/dto/deliveries.dart';
import 'package:shop/data/dto/request_calculated_cart.dart';
import 'package:shop/pages/order_page/order_bloc.dart';
import 'package:shop/utils/app_components.dart';
import 'package:shop/widgets/my_cupertino_navigator_bar.dart';
import 'package:shop/widgets/my_cupertino_text_field.dart';

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
      child: Builder(builder: (context) {
        return SafeArea(
          child: CupertinoPageScaffold(
            navigationBar: MyCupertinoNavigatorBar(
              middle: Text('Оформление заказа'),
            ),
            child: SafeArea(
              child: Column(
                children: [
                  Flexible(
                    flex: 1,
                    child: BlocBuilder<OrderBloc, OrderState>(
                      builder: (context, state) {
                        List<Widget> widgets = [
                          Text('Данные получателя'),
                          MyCupertinoTextField(placeholder: "ФИО"),
                          MyCupertinoTextField(placeholder: "+7 000 000 00 00"),
                          MyCupertinoTextField(placeholder: "E-mail"),
                          SizedBox(
                            height: 16,
                          ),
                        ];
                        if (state is DeliveryOrderState) {
                          widgets.add(const Text('Выбор способра доставки'));
                          final List<Delivery> deliveries = state.deliveries;
                          final Delivery favoriteDelivery = state.delivery;
                          widgets.addAll(
                            deliveries.map<Widget>(
                              (delivery) => GestureDetector(
                                onTap: () {
                                  context.read<OrderBloc>().add(
                                      SelectDeliveryOrderEvent(
                                          delivery: delivery));
                                },
                                child: Container(
                                  padding: EdgeInsets.symmetric(vertical: 16),
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: CupertinoColors.systemGrey,
                                    ),
                                  ),
                                  child: CupertinoListTile(
                                    title: Text(delivery.title),
                                    leading: Image.network(delivery.icon),
                                    subtitle: Text(
                                        'Тип: ${delivery.type} Адресс: ${delivery.farmAddress}'),
                                    trailing: delivery.id == favoriteDelivery.id
                                        ? Icon(CupertinoIcons.checkmark_alt)
                                        : null,
                                  ),
                                ),
                              ),
                            ),
                          );
                          widgets.add(SizedBox(height: 16));
                        }
                        if (state is PaymentsOrderState) {
                          widgets.add(const Text('Выбор способра доставки'));
                          final List<Delivery> deliveries = state.deliveries;
                          final Delivery favoriteDelivery = state.delivery;
                          widgets.addAll(
                            deliveries.map<Widget>(
                                  (delivery) => GestureDetector(
                                onTap: () {
                                  context.read<OrderBloc>().add(
                                      SelectDeliveryOrderEvent(
                                          delivery: delivery));
                                },
                                child: Container(
                                  padding: EdgeInsets.symmetric(vertical: 16),
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: CupertinoColors.systemGrey,
                                    ),
                                  ),
                                  child: CupertinoListTile(
                                    title: Text(delivery.title),
                                    leading: Image.network(delivery.icon),
                                    subtitle: Text(
                                        'Тип: ${delivery.type} Адресс: ${delivery.farmAddress}'),
                                    trailing: delivery.id == favoriteDelivery.id
                                        ? Icon(CupertinoIcons.checkmark_alt)
                                        : null,
                                  ),
                                ),
                              ),
                            ),
                          );
                          widgets.add(SizedBox(height: 16));
                          widgets.add(const Text('Способ оплаты'));
                          final List<Payment> payments = state.payments;
                          final Payment favoritePayment = state.payment;
                          widgets.addAll(
                            payments.map<Widget>(
                              (payment) => Container(
                                padding: EdgeInsets.symmetric(vertical: 16),
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: CupertinoColors.systemGrey,
                                  ),
                                ),
                                child: CupertinoListTile(
                                  title: Text(payment.title),
                                  leading: Image.network(payment.icon),
                                  subtitle: Text('Тип: ${payment.type}'),
                                  trailing: payment.id == favoritePayment.id
                                      ? Icon(CupertinoIcons.checkmark_alt)
                                      : null,
                                ),
                              ),
                            ),
                          );
                          widgets.add(SizedBox(height: 16));
                        }
                        widgets.addAll([
                          CupertinoButton(
                              child: Text('ВЫБРАТЬ АДРЕСС'), onPressed: null),
                          Text('Способ оплаты'),
                        ]);
                        // В зависимости от текущего состояния, отображаем различные виджеты
                        return ListView.separated(
                          padding: EdgeInsets.symmetric(horizontal: 16),
                          itemBuilder: (context, index) {
                            return widgets[index];
                          },
                          separatorBuilder: (context, _) {
                            return const SizedBox(
                              height: 16,
                            );
                          },
                          itemCount: widgets.length,
                        );
                      },
                    ),
                  ),
                  Flexible(
                    flex: 0,
                    child: Container(
                      width: double.infinity,
                      padding:
                          EdgeInsets.symmetric(vertical: 16, horizontal: 15),
                      decoration: BoxDecoration(
                        color:
                            CupertinoTheme.of(context).scaffoldBackgroundColor,
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
                          context.read<OrderBloc>()
                            ..add(LoadDeliveryOrderEvent());
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      }),
    );
  }
}
