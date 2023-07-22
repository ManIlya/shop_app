import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shop/data/dto/catalog/products/products_dto.dart';
import 'package:shop/utils/icons/shop_app_icons_icons.dart';

class CartWidget extends StatelessWidget {
  CartWidget({super.key});

  final product = Product.fromJson({
    "id": 2,
    "price": "760.0000",
    "old_price": "770.0",
    "discount": "10.0000",
    "name": "Форель",
    "brand": "Баба Маня",
    "picture":
        "https://img.b2b.trade/a4a9d2a4-ebf8-4937-aace-207f29799777/-/smart_resize/500x500/-/quality/smart/-/format/webp/",
    "article": "2",
    "badges": [],
    "rating": 0.0,
    "reviews_count": 0
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CupertinoPageScaffold(
        navigationBar: MyCupertinoNavigatorBar(
          middle: Text('Корзина'),
          trailing: CupertinoButton(
            onPressed: () {
              //todo генерация qr кода
            },
            child: Icon(
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
                child: CustomScrollView(
                  slivers: [
                    SliverList.separated(
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: EdgeInsets.symmetric(horizontal: 15),
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
                                    product.picture ?? '',
                                    width: 88,
                                    height: 88,
                                  ),
                                ),
                                Flexible(
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
                                            ' ${product.name} (арт. ${product.article}) ', style: TextStyle(

                                          fontSize: 12,
                                          height: 48/12,
                                        ),),
                                        trailing: Row(
                                          children: [
                                            CupertinoButton(
                                              alignment: Alignment.topRight,
                                              padding: EdgeInsets.zero,
                                              child: Icon(CupertinoIcons.multiply),
                                              onPressed: () {},
                                            ),
                                            CupertinoButton(
                                              alignment: Alignment.topRight,
                                              padding: EdgeInsets.zero,
                                              child: Icon(CupertinoIcons.multiply),
                                              onPressed: () {},
                                            ),
                                          ],
                                        ),
                                      ),
                                      CupertinoListTile(
                                        padding: EdgeInsets.zero,
                                        title: Text('${product.price} ₽', style: TextStyle(
                                          fontSize: 16,
                                          height: 21/16,
                                        ),),
                                        subtitle: Text(
                                          "${product.oldPrice} ₽",
                                          style: TextStyle(
                                            fontSize: 12,
                                            height: 16/12,
                                            decoration: TextDecoration.lineThrough,
                                          ),
                                        ),
                                        trailing: Container(
                                          child: Row(
                                            children: [
                                              CupertinoButton(
                                                padding: EdgeInsets.zero,
                                                borderRadius: BorderRadius.zero,
                                                color:CupertinoColors.inactiveGray,
                                                child: Icon(CupertinoIcons.minus),
                                                onPressed: () {},
                                              ),
                                              SizedBox(
                                                  width: 44,
                                                  height: 44,
                                                  child: Center(
                                                    child: Text('3', style: TextStyle(
                                                      fontSize: 14,
                                                      height: 17/14,
                                                    ),),
                                                  )),
                                              CupertinoButton(
                                                padding: EdgeInsets.zero,
                                                borderRadius: BorderRadius.zero,
                                                color: CupertinoTheme.of(context)
                                                    .primaryColor,
                                                child: Icon(CupertinoIcons.plus),
                                                onPressed: () {},
                                              ),
                                            ],
                                          ),
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
                      },
                      separatorBuilder: (_, __) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: Divider(height: 24, thickness: 2, color: Colors.grey),
                        );
                      },
                      itemCount: 20,
                    ),
                  ],
                ),
              ),
              Flexible(
                flex: 0,
                child: Container(
                  height: 142,
                  //color: CupertinoColors.activeBlue,
                  decoration: BoxDecoration(
                    color: CupertinoColors.white, // Цвет
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5), // Цвет тени и её прозрачность
                        spreadRadius: 2, // Распространение тени
                        blurRadius: 4, // Радиус размытия тени
                        offset: Offset(0, -2), // Смещение тени по горизонтали и вертикали
                      ),
                    ],
                  ),
                  child: Center(
                    child: ElevatedButton(
                      onPressed: () {
                        //todo оформление заказа
                      },
                      child: Text('Оформить заказ'),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MyCupertinoNavigatorBar extends StatelessWidget
    implements ObstructingPreferredSizeWidget {
  const MyCupertinoNavigatorBar({
    Key? key,
    required this.middle,
    this.preferredSize = const Size.fromHeight(54.0),
    this.leading,
    this.trailing,
  }) : super(key: key);
  final Widget? leading;
  final Widget? trailing;
  final Widget middle;
  @override
  final Size preferredSize;

  // Переопределение методов ObstructingPreferredSizeWidget
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: preferredSize.height,
      child: CupertinoNavigationBar(
        backgroundColor: CupertinoTheme.of(context).scaffoldBackgroundColor,
        border: null,
        padding: const EdgeInsetsDirectional.symmetric(horizontal: 16),
        middle: Padding(
          padding: const EdgeInsets.symmetric(vertical: 15),
          child: DefaultTextStyle(
            style: CupertinoTheme.of(context).textTheme.navTitleTextStyle,
            child: middle,
          ),
        ),
        trailing: trailing,
      ),
    );
  }

  @override
  bool shouldFullyObstruct(BuildContext context) {
    return false; // Верните true, если нужно полностью обструктировать размеры и расположение.
  }
}
