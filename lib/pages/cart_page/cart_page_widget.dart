import 'package:elementary/elementary.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shop/pages/cart_product_page/cart_product_page_widget.dart';
import 'package:shop/pages/cart_product_page/cart_product_page_wm.dart';
import 'package:shop/utils/icons/shop_app_icons_icons.dart';
import 'package:shop/widgets/my_cupertino_navigator_bar.dart';
import 'cart_page_wm.dart';

// TODO: cover with documentation
/// Main widget for CartPage module
class CartPageWidget extends ElementaryWidget<ICartPageWidgetModel> {
  const CartPageWidget({
    Key? key,
    WidgetModelFactory wmFactory = defaultCartPageWidgetModelFactory,
  }) : super(wmFactory, key: key);

  @override
  Widget build(ICartPageWidgetModel wm) {
    return SafeArea(
      child: CupertinoPageScaffold(
        navigationBar: MyCupertinoNavigatorBar(
          middle: const Text('Корзина'),
          trailing: CupertinoButton(
            onPressed: () {
              //todo генерация qr кода
            },
            child: const Icon(
              ShopAppIcons.share,
            ),
          ),
        ),
        child: SafeArea(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Flexible(
                flex: 1,
                child: EntityStateNotifierBuilder(
                  listenableEntityState: wm.cartState,
                  builder: (context, cart) {
                    final products = cart?.products;
                    if (products != null) {
                      if (products.isNotEmpty) {
                        return CustomScrollView(
                          slivers: [
                            SliverList.separated(
                              itemBuilder: (context, index) {
                                return CartProductPageWidget(
                                  wmFactory: (context) =>
                                      defaultCartProductPageWidgetModelFactory(
                                          context, products[index]),
                                );
                              },
                              separatorBuilder: (_, __) {
                                return const Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 15),
                                  child: Divider(
                                      height: 24,
                                      thickness: 2,
                                      color: Colors.grey),
                                );
                              },
                              itemCount: products.length,
                            ),
                          ],
                        );
                      } else {
                        return Center(
                          child: Text(
                            'Ваша корзина пуста',
                            style: wm.cupertinoTheme.textTheme
                                .navLargeTitleTextStyle,
                          ),
                        );
                      }
                    }
                    return const CupertinoActivityIndicator();
                  },
                ),
              ),
              Flexible(
                flex: 0,
                child: EntityStateNotifierBuilder(
                  listenableEntityState: wm.cartState,
                  builder: (context, cart) {
                    if (cart != null && cart.products.isNotEmpty) {
                      return Container(
                        height: 142,
                        width: double.infinity,
                        //color: CupertinoColors.activeBlue,
                        decoration: BoxDecoration(
                          color: wm.cupertinoTheme.scaffoldBackgroundColor,
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
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text('ИТОГО: ${cart.price} ₽'),
                                  cart.oldPrice != null
                                      ? Text(
                                          'Скидка:  ${double.parse(cart.price) - double.parse(cart.oldPrice!)} ₽')
                                      : const SizedBox(),
                                ],
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 15, vertical: 16),
                                child: CupertinoButton.filled(
                                  minSize: double.infinity,
                                  padding: EdgeInsets.zero,
                                  onPressed: wm.openOrder,
                                  borderRadius: BorderRadius.zero,
                                  child: const Text('Оформить заказ'),
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    }
                    return const SizedBox();
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
