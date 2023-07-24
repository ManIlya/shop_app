import 'package:elementary/elementary.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shop/utils/icons/shop_app_icons_icons.dart';
import 'cart_product_page_wm.dart';

// TODO: cover with documentation
/// Main widget for CartProductPage module
class CartProductPageWidget
    extends ElementaryWidget<ICartProductPageWidgetModel> {
  const CartProductPageWidget({
    Key? key,
    required WidgetModelFactory wmFactory,
  }) : super(wmFactory, key: key);

  @override
  Widget build(ICartProductPageWidgetModel wm) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: SizedBox(
        height: 100,
        width: 360,
        child: EntityStateNotifierBuilder(
          listenableEntityState: wm.productState,
          builder: (context, product) {
            if (product != null) {
              return Row(
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Flexible(
                    flex: 0,
                    child: Image.network(
                      product.product.picture,
                      width: 88,
                      height: 88,
                    ),
                  ),
                  const Flexible(
                      flex: 0,
                      child: SizedBox(
                        width: 24,
                      )),
                  Expanded(
                    flex: 3,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CupertinoListTile(
                          padding: EdgeInsets.zero,
                          title: Text(
                            ' ${product.product.name} (арт. ${product.product.article}) ',
                            style: const TextStyle(
                              fontSize: 12,
                              height: 48 / 12,
                            ),
                          ),
                          trailing: Row(
                            children: [
                              CupertinoButton(
                                alignment: Alignment.topRight,
                                padding: EdgeInsets.zero,
                                //todo навесить stateNotifire
                                child: const Icon(ShopAppIcons.heart),
                                onPressed: () => wm.tabFavorite(),
                              ),
                              CupertinoButton(
                                alignment: Alignment.topRight,
                                padding: EdgeInsets.zero,
                                child: const Icon(CupertinoIcons.multiply),
                                onPressed: () =>wm.tabRemove(),
                              ),
                            ],
                          ),
                        ),
                        EntityStateNotifierBuilder(
                          listenableEntityState: wm.countState,
                          builder: (context, count) {
                            if(count!=null){

                              return CupertinoListTile(
                                padding: EdgeInsets.zero,
                                title: Text(
                                  '${product.product.price} ₽',
                                  style: const TextStyle(
                                    fontSize: 16,
                                    height: 21 / 16,
                                  ),
                                ),
                                subtitle: Text(
                                  "${product.product.oldPrice} ₽",
                                  style: const TextStyle(
                                    fontSize: 12,
                                    height: 16 / 12,
                                    decoration: TextDecoration.lineThrough,
                                  ),
                                ),
                                trailing: Row(
                                  children: [
                                    CupertinoButton.filled(
                                      padding: EdgeInsets.zero,
                                      borderRadius: BorderRadius.zero,
                                      //color: CupertinoColors.inactiveGray,
                                      child: const Icon(CupertinoIcons.minus),

                                      onPressed: count<=1?null:wm.tabMinus,
                                    ),
                                    SizedBox(
                                        width: 44,
                                        height: 44,
                                        child: Center(
                                          child: Text(
                                            '$count',
                                            style: const TextStyle(
                                              fontSize: 14,
                                              height: 17 / 14,
                                            ),
                                          ),
                                        )),
                                    CupertinoButton.filled(
                                      padding: EdgeInsets.zero,
                                      borderRadius: BorderRadius.zero,
                                      onPressed: wm.tabPlus,
                                      child: const Icon(CupertinoIcons.plus),
                                    ),
                                  ],
                                ),
                              );
                            }
                            return const Center(child: CupertinoActivityIndicator(),);
                          }
                        ),
                      ],
                    ),
                  )
                  // Дополнительный контент для товаров в корзине
                ],
              );
            }
            return Center(child: CupertinoActivityIndicator(),);
          },
          loadingBuilder: (_, __) {
            return Center(
              child: CupertinoActivityIndicator(),
            );
          },
        ),
      ),
    );
  }
}
