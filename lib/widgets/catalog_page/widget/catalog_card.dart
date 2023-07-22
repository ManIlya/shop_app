import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shop/data/dto/catalog/products/products_dto.dart';
import 'package:shop/utils/converter.dart';
import 'package:shop/utils/navigator/app_router.dart';
import 'package:shop/widgets/catalog_product_card/catalog_product_card.dart';
import 'package:shop/widgets/catalog_product_card/product_card.dart';
import 'package:shop/widgets/icons/shop_app_icons_icons.dart';

class CatalogCardWidget extends StatelessWidget {
  CatalogCardWidget({
    required this.product,
    super.key,
  });

  Product product;
  final double _width = 164;
  final double _height = 250;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: _width.ceil(),
          child: SizedBox(
            width: _width,
            height: _width,
            child: AspectRatio(
              aspectRatio: 1,
              child: Stack(
                children: [
                  Hero(
                    tag: product.picture??'',
                    child: Image.network(
                      product.picture ?? '',
                      width: _width,
                      height: _width,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: CupertinoButton(
                      child: const Icon(ShopAppIcons.heart),
                      onPressed: () {},
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
        Expanded(
          flex: (_height - _width).ceil(),
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
                    product.name ?? 'None',
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
                      "${PriceConvert.convertPrice(product.price ?? '')} ₽",
                      textAlign: TextAlign.start,
                    ),
                    subtitle: product.oldPrice != null
                        ? Text(
                            "${PriceConvert.convertPrice(product.oldPrice!)} ₽",
                            style: const TextStyle(
                              decoration: TextDecoration.lineThrough,
                            ),
                            textAlign: TextAlign.start,
                          )
                        : null,
                    trailing: SizedBox(
                      width: 48,
                      height: 48,
                      child: CupertinoButton.filled(
                        padding: EdgeInsets.zero,
                        borderRadius: BorderRadius.circular(24),
                        child: SizedBox(
                          width: 48,
                          height: 48,
                          child: Icon(ShopAppIcons.cart),
                        ),
                        onPressed: () {
                          context.router.navigate(CatalogProductCardRoute(id: product.id!, preview: product,));
                          /*Navigator.push(
                            context,
                            CupertinoPageRoute(
                              builder: (context) =>ProductCardWidget(product, product.id!),
                            ),
                          );*/

                          //todo реализовать нажатие лайка
                        },
                      ),
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
}
