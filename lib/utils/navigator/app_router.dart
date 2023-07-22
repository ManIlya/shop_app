import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:shop/data/dto/catalog/products/products_dto.dart';
import 'package:shop/pages/cart/cart_page.dart';
import 'package:shop/pages/catalog/catalog_page.dart';
import 'package:shop/pages/catalog/product_page.dart';
import 'package:shop/pages/home_page.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(initial: true, page: HomeRoute.page, children: [
          AutoRoute(initial: true, page: CatalogTab.page, children: [
            AutoRoute(initial: true, page: CatalogRoute.page),
            AutoRoute(page: ProductRoute.page),
          ]),
          AutoRoute(page: CartTab.page, children: [
            AutoRoute(initial: true, page: CartRoute.page),
          ]),
        ]),
      ];
}

@RoutePage(name: 'CatalogTab')
class CatalogTabPage extends AutoRouter {
  const CatalogTabPage({super.key});
}

@RoutePage(name: 'CartTab')
class CardTabPage extends AutoRouter {
  const CardTabPage({super.key});
}
