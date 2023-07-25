import 'package:elementary/elementary.dart';
import 'package:flutter/cupertino.dart';
import 'package:shop/data/dto/products_dto.dart';
import 'package:shop/utils/icons/shop_app_icons_icons.dart';
import 'package:shop/pages/catalog_product_page/catalog_card_wm.dart';

class CatalogCardWidget extends ElementaryWidget<ICatalogCardWM> {
  const CatalogCardWidget(super.wmFactory, {super.key});

  final double _width = 164;
  final double _height = 250;

  @override
  Widget build(ICatalogCardWM wm) {
    return GestureDetector(
      onTap: () {
        wm.navigateToProductCard();
      },
      child: EntityStateNotifierBuilder(
        listenableEntityState: wm.productState,
        builder: (BuildContext context, Product? product) {
          if (product != null) {
            return Column(
              children: [
                Expanded(
                  // Добавлен Expanded
                  child: SizedBox(
                    width: _width,
                    height: _width,
                    child: AspectRatio(
                      aspectRatio: 1,
                      child: Stack(
                        children: [
                          Hero(
                            tag: product,
                            child: Image.network(
                              product.picture,
                              width: _width,
                              height: _width,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Align(
                            alignment: Alignment.topRight,
                            child: EntityStateNotifierBuilder(
                              listenableEntityState: wm.favoriteState,
                              builder: (BuildContext context, bool? data) {
                                data ??= false;
                                return CupertinoButton(
                                  child: data
                                      ? const Icon(
                                          ShopAppIcons.heartFeel,
                                          color: CupertinoColors.systemRed,
                                        )
                                      : const Icon(
                                          ShopAppIcons.heart,
                                        ),
                                  onPressed: () {
                                    //todo добавление в избранное
                                    wm.toggleFavorite();
                                  },
                                );
                              },
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  // Добавлен Expanded
                  child: Container(
                    width: _width,
                    height: _height - _width,
                    alignment: AlignmentDirectional.centerStart,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: _width,
                          height: 38,
                          child: Text(
                            product.name,
                            style: const TextStyle(
                              fontSize: 12,
                              height: 15.84 / 12,
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                        SizedBox(
                          width: _width,
                          height: 48,
                          child: CupertinoListTile(
                            padding: EdgeInsets.zero,
                            title: Text(
                              "${product.price} ₽",
                              textAlign: TextAlign.start,
                            ),
                            subtitle: product.oldPrice != null
                                ? Text(
                                    "${product.oldPrice!} ₽",
                                    style: const TextStyle(
                                      decoration: TextDecoration.lineThrough,
                                    ),
                                    textAlign: TextAlign.start,
                                  )
                                : null,
                            trailing: EntityStateNotifierBuilder(
                              listenableEntityState: wm.cartState,
                              builder: (BuildContext context, bool? data) {
                                data ??= false;
                                if (!data) {
                                  return SizedBox(
                                    width: 48,
                                    height: 48,
                                    child: CupertinoButton.filled(
                                      padding: EdgeInsets.zero,
                                      borderRadius: BorderRadius.circular(24),
                                      child: const SizedBox(
                                        width: 48,
                                        height: 48,
                                        child: Icon(ShopAppIcons.cart),
                                      ),
                                      onPressed: () {
                                        wm.toggleCart();
                                      },
                                    ),
                                  );
                                }
                                return const SizedBox();
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            );
          }
          return const Center(
            child: CupertinoActivityIndicator(),
          );
        },
      ),
    );
  }
}
