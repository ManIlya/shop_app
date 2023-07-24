
import 'package:auto_route/auto_route.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/cupertino.dart';
import 'package:shop/data/dto/cart_cart.dart';
import 'package:shop/data/dto/products_dto.dart';
import 'package:shop/pages/catalog_product_page/catalog_card_model.dart';
import 'package:shop/utils/app_components.dart';
import 'package:shop/utils/navigator/app_router.dart';
import 'package:shop/pages/catalog_product_page/catalog_screen_product_card.dart';

class CatalogCardWM extends WidgetModel<CatalogCardWidget, CatalogCardModel>
    implements ICatalogCardWM {
  CatalogCardWM(super.model);

  final EntityStateNotifier<Product> _productState = EntityStateNotifier();
  final EntityStateNotifier<bool> _favoriteState = EntityStateNotifier();
  final EntityStateNotifier<bool> _cartState = EntityStateNotifier();

  bool _isFavorite = false;
  bool _isCart = false;

  @override
  void initWidgetModel() {
    super.initWidgetModel();
    _productState.content(model.product);
    _favoriteState.content(_isFavorite);
    _cartState.content(_isCart);
  }

  @override
  void dispose() {
    _productState.dispose();
    _favoriteState.dispose();
    _cartState.dispose();
    super.dispose();
  }

  @override
  ListenableState<EntityState<bool>> get cartState => _cartState;

  @override
  CupertinoThemeData get cupertinoTheme => CupertinoTheme.of(context);

  @override
  ListenableState<EntityState<bool>> get favoriteState => _favoriteState;

  @override
  void navigateToProductCard() {
    final product = _productState.value?.data;
    if (product != null) {
      context.router.navigate(ProductRoute(
        id: product.id,
        preview: product,
      ));
    }
  }

  @override
  ListenableState<EntityState<Product>> get productState => _productState;

  @override
  void toggleCart() {
    AppComponents().cartUseCase.postCart(
      request: CartUpdate(
        productId: model.product.id,
      ),
    );
  }

  @override
  void toggleFavorite() {
    _isFavorite = !_isFavorite;
    _favoriteState.content(_isFavorite);
    // TODO: implement tabCartButton
  }
}

abstract class ICatalogCardWM extends IWidgetModel {
  CupertinoThemeData get cupertinoTheme;

  ListenableState<EntityState<Product>> get productState;

  ListenableState<EntityState<bool>> get favoriteState;

  ListenableState<EntityState<bool>> get cartState;

  void navigateToProductCard();

  void toggleCart();

  void toggleFavorite();
}