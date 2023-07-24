import 'package:flutter/cupertino.dart';
import 'package:shop/data/dto/request_calculated_cart.dart';

class CartCardWidget extends StatelessWidget {
  const CartCardWidget({super.key, required this.product});

  final CartProduct product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: SizedBox(
        height: 100,
        width: 360,
        child: Row(
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
                //mainAxisSize: MainAxisSize.max,
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
                          child: const Icon(CupertinoIcons.multiply),
                          onPressed: () {},
                        ),
                        CupertinoButton(
                          alignment: Alignment.topRight,
                          padding: EdgeInsets.zero,
                          child: const Icon(CupertinoIcons.multiply),
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ),
                  CupertinoListTile(
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
                        CupertinoButton(
                          padding: EdgeInsets.zero,
                          borderRadius: BorderRadius.zero,
                          color: CupertinoColors.inactiveGray,
                          child: const Icon(CupertinoIcons.minus),
                          onPressed: () {},
                        ),
                        const SizedBox(
                            width: 44,
                            height: 44,
                            child: Center(
                              child: Text(
                                '3',
                                style: TextStyle(
                                  fontSize: 14,
                                  height: 17 / 14,
                                ),
                              ),
                            )),
                        CupertinoButton(
                          padding: EdgeInsets.zero,
                          borderRadius: BorderRadius.zero,
                          color: CupertinoTheme.of(context).primaryColor,
                          child: const Icon(CupertinoIcons.plus),
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
            // Дополнительный контент для товаров в корзине
          ],
        ),
      ),
    );
  }
}
