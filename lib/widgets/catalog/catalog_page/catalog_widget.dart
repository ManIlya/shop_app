import 'package:elementary/elementary.dart';
import 'package:flutter/cupertino.dart';
import 'package:shop/data/dto/catalog/products/products_dto.dart';
import 'package:shop/widget_models/catalog/catalog_page/catalog_widget_model.dart';

import 'product_card/catalog_screen_product_card.dart';

class CatalogWidget extends ElementaryWidget<ICatalogScreenWM> {
  const CatalogWidget(super.wmFactory, {super.key});

  static const sliverPadding = 16.0;
  static const crossAxisSpacing = 30.0;
  static const height = 164.0;
  static const weight = 250.0;

  @override
  Widget build(ICatalogScreenWM wm) {
    return SafeArea(
      child: CustomScrollView(
        slivers: [
          SliverPadding(
            padding: const EdgeInsets.all(sliverPadding),
            sliver: EntityStateNotifierBuilder<List<Product>>(
              listenableEntityState: wm.productListState,
              loadingBuilder: (_, __) {
                return const SliverFillRemaining(
                  child: Center(
                    child: CupertinoActivityIndicator(),
                  ),
                );
              },
              errorBuilder: (_, __, ___) {
                return const SliverFillRemaining(
                  child: Center(
                    child: Text('ошибка повторите позже'),
                  ),
                );
              },
              builder: (context, value) {
                final products = value ?? [];
                return SliverGrid.builder(
                  gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                    //crossAxisCount: 2,
                    crossAxisSpacing: crossAxisSpacing,
                    mainAxisSpacing: sliverPadding,
                    childAspectRatio: height / weight,
                    maxCrossAxisExtent: height,
                  ),
                  itemBuilder: (context, index) {
                    return CatalogProductCardWidget(
                      product: products[index],
                    );
                  },
                  itemCount: products.length,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
