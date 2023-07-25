import 'dart:async';

import 'package:elementary/elementary.dart';
import 'package:flutter/cupertino.dart';
import 'package:shop/data/dto/cart_cart.dart';
import 'package:shop/data/dto/products_dto.dart';
import 'package:shop/data/dto/request_calculated_cart.dart';
import 'package:shop/data/repository/cart_use_case.dart';
import 'package:shop/pages/product_page/product_model.dart';
import 'package:shop/utils/app_components.dart';
import 'package:shop/utils/converter.dart';
import 'package:shop/pages/product_page/product_widget.dart';

class ProductWM extends WidgetModel<ProductWidget, ProductModel>
    implements IProductWM {
  ProductWM(super.model);

  final EntityStateNotifier<Product> _productState = EntityStateNotifier();
  final EntityStateNotifier<bool> _favoriteState = EntityStateNotifier();
  @override
  final EntityStateNotifier<CartProduct?> cartState = EntityStateNotifier();
  final CartUseCase cartUseCase = AppComponents().cartUseCase;
  StreamSubscription? sub;

  @override
  void initWidgetModel() {
    super.initWidgetModel();
    final preview = model.preview;
    if (preview != null) {
      _productState.content(preview);
    }
    _loadProductState();
    sub = cartUseCase.cart.stream.listen((event) {
      cartState.content(event?.products
          .where((element) => element.product.id == model.id)
          .first);
    });
  }

  @override
  void dispose() {
    _productState.dispose();
    sub?.cancel();

    super.dispose();
  }

  Future<void> _loadProductState() async {
    final previousData = _productState.value?.data;
    _productState.loading(previousData);

    try {
      final res = await model.loadProducts();
      _productState.content(res);
    } on Exception catch (e) {
      _productState.error(e, previousData);
    }
  }

  @override
  ListenableState<EntityState<Product>> get productState => _productState;

  @override
  String discountString() {
    final product = _productState.value?.data;
    if (product != null) {
      final price = product.price;
      final oldPrice = product.oldPrice;
      if (oldPrice != null) {
        return '- ${PriceConvert.convertPrice((((oldPrice - price) / oldPrice).toDouble() * 100))} %';
      }
    }
    return '';
  }

  @override
  CupertinoThemeData get cupertinoTheme => CupertinoTheme.of(context);

  @override
  // TODO: implement favoriteState
  ListenableState<EntityState<Product>> get favoriteState =>
      throw UnimplementedError();

  @override
  void tabBasket() {
    cartUseCase.postCart(
      request: CartUpdate(productId: model.id),
    );
  }

  @override
  void tabFavorite() {
    // TODO: implement tabFavorite
  }

  @override
  void tabMinus() {
    final product = cartState.value?.data;
    if (product != null) {
      final count = product.count;
      if (count > 1) {
        final count = product.count - 1;
        cartState.content(product.copyWith(count: count));
        cartUseCase.addProductCount(
          request: CartUpdate(productId: product.product.id, count: count),
        );
      }
    }
  }

  @override
  void tabPlus() {
    final product = cartState.value?.data;
    if (product != null) {
      final count = product.count + 1;
      cartState.content(product.copyWith(count: count));
      cartUseCase.addProductCount(
        request: CartUpdate(productId: product.product.id, count: count),
      );
    }
  }
}

abstract class IProductWM extends IWidgetModel {
  ListenableState<EntityState<Product>> get productState;

  ListenableState<EntityState<Product>> get favoriteState;

  ListenableState<EntityState<CartProduct?>> get cartState;

  CupertinoThemeData get cupertinoTheme;

  void tabPlus();

  void tabMinus();

  void tabFavorite();

  void tabBasket();

  String discountString();
}
