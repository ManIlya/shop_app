import 'dart:async';

import 'package:elementary/elementary.dart';
import 'package:flutter/cupertino.dart';
import 'package:shop/data/dto/request_calculated_cart.dart';
import 'package:shop/data/repository/cart_use_case.dart';
import 'package:shop/utils/app_components.dart';
import 'cart_page_model.dart';
import 'cart_page_widget.dart';

abstract class ICartPageWidgetModel extends IWidgetModel {
  ListenableState<EntityState<CalculatedCart?>> get cartState;

  CartUseCase get cartUseCase;

  CupertinoThemeData get cupertinoTheme;

  //CartProvider get cartUseCase;
  void openOrder();
}

CartPageWidgetModel defaultCartPageWidgetModelFactory(BuildContext context) {
  return CartPageWidgetModel(CartPageModel());
}

// TODO: cover with documentation
/// Default widget model for CartPageWidget
class CartPageWidgetModel extends WidgetModel<CartPageWidget, CartPageModel>
    implements ICartPageWidgetModel {
  CartPageWidgetModel(CartPageModel model) : super(model);

  @override
  final EntityStateNotifier<CalculatedCart?> cartState = EntityStateNotifier();

  @override
  final cartUseCase = AppComponents().cartUseCase;

  StreamSubscription? sub;

  @override
  void initWidgetModel() {
    super.initWidgetModel();
    loadCart();
    sub = cartUseCase.cart.stream.listen((event) {
      cartState.content(event);
    });
  }

  @override
  void dispose() {
    cartState.dispose();
    sub?.cancel();

    super.dispose();
  }

  @override
  CupertinoThemeData get cupertinoTheme => CupertinoTheme.of(context);

  @override
  void openOrder() {
    // TODO: implement openOrder
  }

  Future<void> loadCart() async {
    await cartUseCase.loadCart();
  }
}
