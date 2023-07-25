import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:shop/data/dto/cart_cart.dart';
import 'package:shop/data/dto/request_calculated_cart.dart';
import 'package:shop/data/repository/cart_use_case.dart';
import 'package:shop/utils/app_components.dart';
import 'package:shop/utils/navigator/app_router.dart';
import 'cart_product_page_model.dart';
import 'cart_product_page_widget.dart';

abstract class ICartProductPageWidgetModel extends IWidgetModel {
  EntityStateNotifier<CartProduct?> get productState;

  void tabPlus();

  void tabRemove();

  void tabMinus();

  void tabFavorite();

  void openProduct();
}

CartProductPageWidgetModel defaultCartProductPageWidgetModelFactory(
    BuildContext context, product) {
  return CartProductPageWidgetModel(CartProductPageModel(product: product));
}

// TODO: cover with documentation
/// Default widget model for CartProductPageWidget
class CartProductPageWidgetModel
    extends WidgetModel<CartProductPageWidget, CartProductPageModel>
    implements ICartProductPageWidgetModel {
  CartProductPageWidgetModel(CartProductPageModel model) : super(model);
  @override
  EntityStateNotifier<CartProduct?> productState = EntityStateNotifier();

  CartUseCase cartUseCase = AppComponents().cartUseCase;
  StreamSubscription? sub;

  @override
  void initWidgetModel() {
    super.initWidgetModel();
    sub = cartUseCase.cart.stream.listen((event) {
      productState.content(
      event?.products
          .where((element) => element.product.id == model.product.product.id)
          .first);
    });
  }
  @override
  void dispose() {
    sub?.cancel();
    productState.dispose();
    super.dispose();
  }

  @override
  void openProduct() {
    final productCart = productState.value?.data;
    if (productCart != null) {
      context.router.navigate(ProductRoute(
        id: productCart.product.id,
        preview: productCart.product,
      ));
    }
  }

  @override
  void tabFavorite() {
    // TODO: implement tabFavorite
  }

  @override
  void tabMinus() {
    final product = productState.value?.data;
    if (product != null) {
      final count = product.count;
      if (count > 1) {
        final count = product.count - 1;
        productState.content(product.copyWith(count: count));
        cartUseCase.addProductCount(
          request: CartUpdate(productId: product.product.id, count: count),
        );
      }
    }
  }

  @override
  void tabPlus() {
    final product = productState.value?.data;
    if (product != null) {
      final count = product.count + 1;
      productState.content(product.copyWith(count: count));
      cartUseCase.addProductCount(
        request: CartUpdate(productId: product.product.id, count: count),
      );
    }
  }

  @override
  void tabRemove() {
    final product = productState.value?.data;
    if (product != null) {
      cartUseCase.deleteCart(
        request: CartAdd(productId: product.product.id),
      );
    }
  }
}
