import 'package:auto_route/auto_route.dart';
import 'package:dio/dio.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shop/data/dto/catalog/products/products_dto.dart';
import 'package:shop/data/remote/client.dart';
import 'package:shop/utils/converter.dart';
import 'package:shop/widgets/icons/shop_app_icons_icons.dart';

/*class CatalogProductCardScreen extends StatelessWidget {
  CatalogProductCardScreen({
    super.key,
    required this.id,
    this.preview,
  });

  final int id;
  final Product? preview;
  final ProductCardDTO newProduct = ProductCardDTO.fromJson({
    "id": 2,
    "parameters": [],
    "picture":
        "https://img.b2b.trade/a4a9d2a4-ebf8-4937-aace-207f29799777/-/smart_resize/500x500/-/quality/smart/-/format/webp/",
    "categories": [
      {
        "id": 7,
        "name": "Рыба и морепродукты",
        "picture":
            "https://poissonnerie-des-bastides.com/wp-content/uploads/2022/03/poissons-accueil-rond.jpg"
      }
    ],
    "badges": [],
    "price": "760.0000",
    "old_price": "770.0",
    "brand": "Баба Маня",
    "article": "2",
    "name": "Форель",
    "description": "Форель из реки Сунжа.",
    "available": true,
    "discount": 10.0,
    "sort": 0,
    "rating": 0.0,
    "reviews_count": 0,
    "need_buy_to_wholesale": 10,
    "wholesale_discount": 40,
    "pictures": []
  });

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text(newProduct.description ?? ''),
      ),
      child: ListView(
        children: [
          CupertinoListTile(
            title: Text(
              _discountString(),
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
              onPressed: () {},
            ),
          ), //скидка и кнопка лайка
          Center(
            child: Hero(
              tag: newProduct.picture ?? '',
              child: Image.network(
                newProduct.picture ?? '',
                height: 273,
                width: 273,
              ),
            ),
          ), //изображение
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 15),
            child: Text(
              newProduct.name!,
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
                  '${PriceConvert.convertPrice(newProduct.price)} ₽',
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
                        "${PriceConvert.convertPrice(newProduct.oldPrice!)} ₽",
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
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: CupertinoButton.filled(
              borderRadius: BorderRadius.zero,
              padding: const EdgeInsets.symmetric(vertical: 17),
              onPressed: () {},
              child: const Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(ShopAppIcons.cart), // Ваша иконка
                  SizedBox(width: 8), // Расстояние между иконкой и текстом
                  Text('В КОРЗИНУ'), // Текст кнопки
                ],
              ),
            ),
          ), //добавить в корзину
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(
              color: CupertinoTheme.of(context).barBackgroundColor,
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    flex: 735,
                    child: CupertinoButton.filled(
                      borderRadius: BorderRadius.zero,
                      padding: const EdgeInsets.symmetric(vertical: 17),
                      onPressed: () {},
                      child: const Icon(CupertinoIcons.minus),
                    ),
                  ),
                  const Expanded(
                    flex: 2130,
                    child: Center(
                      child: Column(
                        children: [
                          Text('В КОРЗИНЕ'),
                          Text('23'),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 735,
                    child: CupertinoButton.filled(
                      borderRadius: BorderRadius.zero,
                      padding: const EdgeInsets.symmetric(vertical: 17),
                      onPressed: () {},
                      child: const Icon(CupertinoIcons.add),
                    ),
                  ),
                ],
              ),
            ),
          ), //кнопка зобавленного в корзину
          SizedBox(
            height: 32,
          ),
          const Divider(),
          *//*DropdownButton(
              items: newProduct.parameters!.map((e) {
                return DropdownMenuItem(
                    child: Row(
                  children: [
                    Text(e.name),
                    Text(e.value),
                  ],
                ));
              }).toList(),
              onChanged: (_) {}),*//*
        ],
      ),
    );
  }

  String _discountString() {
    final discount = newProduct.discount;
    final fulPrice = newProduct.oldPrice;
    if (discount != null && fulPrice != null) {
      final value = discount / double.parse(fulPrice) * 100;
      final newPrice = double.parse(value.toStringAsFixed(1));

      return '- $newPrice %';
    }
    return '';
  }
}*/

class ProductCardModel extends ElementaryModel {
  final Product? preview;
  final int id;

  ProductCardModel({this.preview, required this.id});

  Future<ProductCardDTO> loadProducts() async {
    final client = RestClient(Dio());
    final res = await client.catalogProductRead(productId: id);
    return res;
  }

  ProductCardDTO getPreview() {
    final prev = this.preview;
    if (prev != null) {
      return const ProductCardDTO(badges: [], price: '', brand: '').copyWith(
          id: prev.id,
          price: prev.price ?? '',
          discount: prev.discount,
          oldPrice: prev.oldPrice,
          name: prev.name,
          article: prev.article,
          picture: prev.picture,
          badges: prev.badges,
          rating: prev.rating,
          reviewsCount: prev.reviewsCount,
          brand: prev.brand);
    }
    return const ProductCardDTO(badges: [], price: '', brand: '');
  }
}

class ProductCardWM extends WidgetModel<ProductCard, ProductCardModel>
    implements IProductCardWM {
  ProductCardWM(super.model);

  final EntityStateNotifier<ProductCardDTO> _productState =
      EntityStateNotifier();

  @override
  void initWidgetModel() {
    super.initWidgetModel();
    _productState.content(model.getPreview());
    _loadProductState();
  }

  Future<void> _loadProductState() async {
    final previousData = _productState.value?.data;
    _productState.loading(previousData);

    try {
      final res = await model.loadProducts();
      _productState.content(res);
    } on Exception catch (e) {
      _productState.error(e, previousData);
    }
  }

  @override
  String discountString() {
    final newProduct = _productState.value?.data ??
        const ProductCardDTO(badges: [], price: '', brand: '');
    final discount = newProduct.discount;
    final fulPrice = newProduct.oldPrice;
    if (discount != null && fulPrice != null) {
      final value = discount / double.parse(fulPrice) * 100;
      final newPrice = double.parse(value.toStringAsFixed(1));

      return '- $newPrice %';
    }
    return '';
  }

  @override
  ListenableState<EntityState<ProductCardDTO>> get productState =>
      _productState;
}

abstract class IProductCardWM extends IWidgetModel {
  ListenableState<EntityState<ProductCardDTO>> get productState;

  String discountString();
}
class ProductCard extends ElementaryWidget<IProductCardWM> {
  const ProductCard(super.wmFactory, {super.key});

  @override
  Widget build(IProductCardWM wm) {
    return EntityStateNotifierBuilder(
        listenableEntityState: wm.productState,
        builder: (context, product) {
          final newProduct = product ?? const ProductCardDTO(badges: [], price: '', brand: '');
          return CupertinoPageScaffold(
            navigationBar: CupertinoNavigationBar(
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
                    onPressed: () {},
                  ),
                ), //скидка и кнопка лайка
                Center(
                  child: Hero(
                    tag: newProduct.picture ?? '',
                    child: Image.network(
                      newProduct.picture ?? '',
                      height: 273,
                      width: 273,
                    ),
                  ),
                ), //изображение
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 0, horizontal: 15),
                  child: Text(
                    newProduct.name!,
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
                        '${PriceConvert.convertPrice(newProduct.price)} ₽',
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
                              "${PriceConvert.convertPrice(newProduct.oldPrice!)} ₽",
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
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: CupertinoButton.filled(
                    borderRadius: BorderRadius.zero,
                    padding: const EdgeInsets.symmetric(vertical: 17),
                    onPressed: () {},
                    child: const Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(ShopAppIcons.cart), // Ваша иконка
                        SizedBox(
                            width: 8), // Расстояние между иконкой и текстом
                        Text('В КОРЗИНУ'), // Текст кнопки
                      ],
                    ),
                  ),
                ), //добавить в корзину
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                    color: CupertinoTheme.of(context).barBackgroundColor,
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                          flex: 735,
                          child: CupertinoButton.filled(
                            borderRadius: BorderRadius.zero,
                            padding: const EdgeInsets.symmetric(vertical: 17),
                            onPressed: () {},
                            child: const Icon(CupertinoIcons.minus),
                          ),
                        ),
                        const Expanded(
                          flex: 2130,
                          child: Center(
                            child: Column(
                              children: [
                                Text('В КОРЗИНЕ'),
                                Text('23'),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 735,
                          child: CupertinoButton.filled(
                            borderRadius: BorderRadius.zero,
                            padding: const EdgeInsets.symmetric(vertical: 17),
                            onPressed: () {},
                            child: const Icon(CupertinoIcons.add),
                          ),
                        ),
                      ],
                    ),
                  ),
                ), //кнопка зобавленного в корзину
                SizedBox(
                  height: 32,
                ),
                const Divider(),
              ],
            ),
          );
        },
        loadingBuilder: (context, newProduct) {
          if (newProduct != null) {
            return CupertinoPageScaffold(
              navigationBar: CupertinoNavigationBar(
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
                      onPressed: () {},
                    ),
                  ), //скидка и кнопка лайка
                  Center(
                    child: Hero(
                      tag: newProduct.picture ?? '',
                      child: Image.network(
                        newProduct.picture ?? '',
                        height: 273,
                        width: 273,
                      ),
                    ),
                  ), //изображение
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 0, horizontal: 15),
                    child: Text(
                      newProduct.name??'',
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
                          '${PriceConvert.convertPrice(newProduct.price)} ₽',
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
                                "${PriceConvert.convertPrice(newProduct.oldPrice!)} ₽",
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
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: CupertinoButton.filled(
                      borderRadius: BorderRadius.zero,
                      padding: const EdgeInsets.symmetric(vertical: 17),
                      onPressed: () {},
                      child: const Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(ShopAppIcons.cart), // Ваша иконка
                          SizedBox(
                              width: 8), // Расстояние между иконкой и текстом
                          Text('В КОРЗИНУ'), // Текст кнопки
                        ],
                      ),
                    ),
                  ), //добавить в корзину
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Container(
                      color: CupertinoTheme.of(context).barBackgroundColor,
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Expanded(
                            flex: 735,
                            child: CupertinoButton.filled(
                              borderRadius: BorderRadius.zero,
                              padding: const EdgeInsets.symmetric(vertical: 17),
                              onPressed: () {},
                              child: const Icon(CupertinoIcons.minus),
                            ),
                          ),
                          const Expanded(
                            flex: 2130,
                            child: Center(
                              child: Column(
                                children: [
                                  Text('В КОРЗИНЕ'),
                                  Text('23'),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 735,
                            child: CupertinoButton.filled(
                              borderRadius: BorderRadius.zero,
                              padding: const EdgeInsets.symmetric(vertical: 17),
                              onPressed: () {},
                              child: const Icon(CupertinoIcons.add),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ), //кнопка зобавленного в корзину
                  SizedBox(
                    height: 32,
                  ),
                  const Divider(),
                  /*DropdownButton(
              items: newProduct.parameters!.map((e) {
                return DropdownMenuItem(
                    child: Row(
                  children: [
                    Text(e.name),
                    Text(e.value),
                  ],
                ));
              }).toList(),
              onChanged: (_) {}),*/
                ],
              ),
            );
          } else {
            return const Center(
              child: CupertinoActivityIndicator(),
            );
          }
        },
      errorBuilder: (context, e, _){
          return Center(child: Text('Возникла ошибка: ${e.toString()}'),);
      },
    );
  }
}
