import 'package:elementary/elementary.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shop/data/dto/products_dto.dart';
import 'package:shop/utils/icons/shop_app_icons_icons.dart';
import 'package:shop/pages/product_page/product_widget_model.dart';
import 'package:shop/widgets/my_cupertino_navigator_bar.dart';

class ProductWidget extends ElementaryWidget<IProductWM> {
  const ProductWidget(super.wmFactory, {super.key});

  @override
  Widget build(IProductWM wm) {
    return SafeArea(
      child: EntityStateNotifierBuilder(
        listenableEntityState: wm.productState,
        builder: (context, product) {
          if (product == null) {
            return const Center(
              child: Text('Возникла проблемма повторите попытку позже'),
            );
          }
          return buildPageContent(wm, product);
        },
        loadingBuilder: (context, newProduct) {
          if (newProduct != null) {
            return buildPageContent(wm, newProduct);
          }
          return const Center(
            child: CupertinoActivityIndicator(),
          );
        },
        errorBuilder: (context, e, _) {
          return Center(
            child: Text('Возникла ошибка: ${e.toString()}'),
          );
        },
      ),
    );
  }

  Widget buildPageContent(
    IProductWM wm,
    Product newProduct,
  ) {
    return CupertinoPageScaffold(
      navigationBar: MyCupertinoNavigatorBar(
        middle: Text(newProduct.description ?? ''),
      ),
      child: ListView(
        children: [
          CupertinoListTile(
            title: Text(
              wm.discountString(),
              style: const TextStyle(
                fontSize: 18,
                height: 24 / 18,
              ),
              textAlign: TextAlign.left,
            ),
            trailing: CupertinoButton(
              child: const Icon(
                ShopAppIcons.heart,
              ),
              onPressed: () {
                //todo нажатие кнопки лайка
              },
            ),
          ), //скидка и кнопка лайка
          Center(
            child: Hero(
              tag: newProduct,
              child: Image.network(
                newProduct.picture,
                height: 273,
                width: 273,
              ),
            ),
          ), //изображение
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 15),
            child: Text(
              newProduct.name,
              style: const TextStyle(
                fontSize: 20,
                height: 84 / 20,
              ),
            ),
          ), //название
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              children: [
                Text(
                  '${newProduct.price} ₽',
                  style: const TextStyle(
                    fontSize: 18,
                    height: 24 / 18,
                  ),
                ),
                const SizedBox(
                  width: 24,
                ),
                newProduct.oldPrice != null
                    ? Text(
                        "${newProduct.oldPrice} ₽",
                        style: const TextStyle(
                          decoration: TextDecoration.lineThrough,
                          fontSize: 18,
                          height: 24 / 18,
                        ),
                      )
                    : const SizedBox(),
              ],
            ),
          ), //цена
          EntityStateNotifierBuilder(
              listenableEntityState: wm.cartState,
              builder: (context, cartProduct) {
                if (cartProduct == null) {
                  return Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: CupertinoButton.filled(
                      borderRadius: BorderRadius.zero,
                      padding: const EdgeInsets.symmetric(vertical: 17),
                      onPressed: wm.tabBasket,
                      child: const Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(ShopAppIcons.cart),
                          // Ваша иконка
                          SizedBox(width: 8),
                          // Расстояние между иконкой и текстом
                          Text('В КОРЗИНУ'),
                          // Текст кнопки
                        ],
                      ),
                    ),
                  ); //добавить в корзину
                }
                return Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                    color: wm.cupertinoTheme.barBackgroundColor,
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                          flex: 735,
                          child: CupertinoButton.filled(
                            borderRadius: BorderRadius.zero,
                            padding: const EdgeInsets.symmetric(vertical: 17),
                            onPressed: wm.tabMinus,
                            child: const Icon(CupertinoIcons.minus),
                          ),
                        ),
                        Expanded(
                          flex: 2130,
                          child: Center(
                            child: Column(
                              children: [
                                const Text('В КОРЗИНЕ'),
                                Text('${cartProduct.count}'),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 735,
                          child: CupertinoButton.filled(
                            borderRadius: BorderRadius.zero,
                            padding: const EdgeInsets.symmetric(vertical: 17),
                            onPressed: wm.tabPlus,
                            child: const Icon(CupertinoIcons.add),
                          ),
                        ),
                      ],
                    ),
                  ),
                ); //кнопка зобавленного в корзину
              }),
          const SizedBox(
            height: 32,
          ),
          const Divider(),
        ],
      ),
    );
  }
}
