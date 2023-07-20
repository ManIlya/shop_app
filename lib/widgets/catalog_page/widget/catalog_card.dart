import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shop/data/dto/catalog/products/products_dto.dart';
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
                  Image.network(
                    'https://wp-s.ru/wallpapers/10/9/463314880930454/krasivyj-zakat-lesnoe-ozero-gory.jpg',
                    width: _width,
                    height: _width,
                    fit: BoxFit.cover,
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: InkWell(
                      child: IconButton(
                        icon: const Icon(ShopAppIcons.heart),
                        onPressed: () {},
                      ),
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
                  child: const Text(
                    "Название товара Название товара...",
                    style: TextStyle(
                      fontFamily: "Montserrat",
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff1f1f1f),
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
                    title: const Text(
                      "1 990 ₽",
                      textAlign: TextAlign.start,
                    ),
                    subtitle: const Text(
                      "2 990 ₽",
                      style: TextStyle(
                        decoration: TextDecoration.lineThrough,
                      ),
                      textAlign: TextAlign.start,
                    ),
                    trailing: SizedBox(
                      width: 48,
                      height: 48,
                      child: IconButton.filled(
                        icon: const Icon(
                          CupertinoIcons.add,
                        ),
                        onPressed: () {
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
