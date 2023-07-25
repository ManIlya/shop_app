import 'dart:async';

import 'package:shop/data/dto/cart_cart.dart';
import 'package:shop/data/dto/request_calculated_cart.dart';
import 'package:shop/data/remote/cart_service.dart';
import 'package:shop/utils/life_cycle_component/lifecycle_component.dart';
import 'package:shop/utils/life_cycle_component/value_sream_wrapper.dart';

class CartUseCase implements LifecycleComponent {
  final CartService cartService;
  StreamSubscription? _subscription;
  final ValueStreamWrapper<CalculatedCart?> cart = ValueStreamWrapper();

  CartUseCase(
    this.cartService,
  );

  @override
  void dispose() {
    _subscription?.cancel();
    cart.dispose();
  }

  @override
  void init() {
    loadCart();
  }

  Future<void> loadCart({
    RequestCalculatedCart? request,
  }) async {
    final response = await cartService.cartCalculate(request: request);
    cart.add(response);
  }

  Future<void> postCart({
    required CartUpdate request,
  }) async {
    final response = await cartService.postCart(request: request);
    cart.add(response);
  }

  Future<void> deleteCart({
    required CartAdd request,
  }) async {
    _deleteProduct(request);
    final response = await cartService.cartCartDelete(cartDelete: request);
    cart.add(response);
  }

  Future<void> addProductCount({
    required CartUpdate request,
  }) async {
    List<CartProduct> newProducts = cart.value?.products
            .map((e) => e.product.id == request.productId
                ? e.copyWith(count: request.count ?? e.count + 1)
                : e)
            .toList() ??
        [];
    cart.add(cart.value?.copyWith(products: newProducts));

    final syncCart = await cartService.cartCartUpdate(cartUpdate: request);
    cart.add(syncCart);
  }

  void _deleteProduct(CartAdd cartUpdate) {
    final productsWithoutSingle = cart.value?.products.where((element) =>
        (element.count > 1 && element.product.id == cartUpdate.productId));
    List<CartProduct> newProducts = productsWithoutSingle
            ?.map((e) => e.product.id == cartUpdate.productId
                ? e.copyWith(count: e.count - 1)
                : e)
            .toList() ??
        [];
    cart.add(cart.value?.copyWith(products: newProducts));
  }
}
