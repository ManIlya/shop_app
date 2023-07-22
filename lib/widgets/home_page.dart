import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:shop/utils/navigator/app_router.dart';
import 'package:shop/widgets/catalog_page/catalog_page.dart';
import 'package:shop/widgets/catalog_page/widget/catalog_card.dart';
import 'package:shop/widgets/catalog_product_card/catalog_product_card.dart';
import 'package:shop/widgets/catalog_product_card/product_card.dart';
import 'package:shop/widgets/icons/shop_app_icons_icons.dart';

@RoutePage()
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      routes: [
        CatalogTab(),
        CardTab(),
      ],
      lazyLoad: false,
      bottomNavigationBuilder: (context, tabsRouter) {
        return CupertinoTabBar(
          items: const [
            BottomNavigationBarItem(
              icon: Icon(ShopAppIcons.showcase),
              label: 'Витрина',
            ),
            BottomNavigationBarItem(
              icon: Icon(ShopAppIcons.catalog),
              label: 'Каталог',
            ),
            /*BottomNavigationBarItem(
              icon: Icon(ShopAppIcons.cart),
              label: 'Корзина',
            ),
            BottomNavigationBarItem(
              icon: Icon(ShopAppIcons.heart),
              label: 'Избранное',
            ),
            BottomNavigationBarItem(
              icon: Icon(ShopAppIcons.profile),
              label: 'Профиль',
            ),*/
          ],
          currentIndex: tabsRouter.activeIndex,
          onTap: tabsRouter.setActiveIndex,
        );
          },
        );


    return CupertinoTabScaffold(
      tabBuilder: (context, index) {
        return IndexedStack(
          index: _index,
          children: [
            CatalogScreen((context) => CatalogScreenWM(CatalogScreenModel())),
            CatalogProductCardScreen(
              id: 1,
            ),
            Center(
              child: Text('data 3'),
            ),
            Center(
              child: Text('data 4'),
            ),
            Center(
              child: Text('data 5'),
            ),
          ],
        );
      },
      tabBar: CupertinoTabBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(ShopAppIcons.showcase),
            label: 'Витрина',
          ),
          BottomNavigationBarItem(
            icon: Icon(ShopAppIcons.catalog),
            label: 'Каталог',
          ),
          BottomNavigationBarItem(
            icon: Icon(ShopAppIcons.cart),
            label: 'Корзина',
          ),
          BottomNavigationBarItem(
            icon: Icon(ShopAppIcons.heart),
            label: 'Избранное',
          ),
          BottomNavigationBarItem(
            icon: Icon(ShopAppIcons.profile),
            label: 'Профиль',
          ),
        ],
        currentIndex: _index,
        onTap: (index) {
          setState(() {
            _index = index;
          });
        },
      ),
    );
  }
}
