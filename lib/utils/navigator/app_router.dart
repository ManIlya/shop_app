import 'package:auto_route/auto_route.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/cupertino.dart';
import 'package:shop/data/dto/catalog/products/products_dto.dart';
import 'package:shop/widgets/catalog_page/catalog_page.dart';
import 'package:shop/widgets/catalog_product_card/product_card.dart';
import 'package:shop/widgets/home_page.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {

  @override
  List<AutoRoute> get routes => [
    AutoRoute(initial: true, page: CatalogTab.page, children: [
      AutoRoute(initial: true, page: CatalogRoute.page),
      AutoRoute(page: CatalogProductCardRoute.page),
    ]),
    AutoRoute(page: CardTab.page, children: [
      AutoRoute(initial: true, page: CatalogRoute.page),
      AutoRoute(page: CatalogProductCardRoute.page),
    ])
  ];
}

@RoutePage(name: 'CatalogTab')
class CatalogTabPage extends AutoRouter {
  const CatalogTabPage({super.key});
}

@RoutePage(name: 'CardTab')
class CardTabPage extends AutoRouter {
  const CardTabPage({super.key});
}