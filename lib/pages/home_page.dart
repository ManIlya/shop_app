import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:shop/utils/icons/shop_app_icons_icons.dart';
import 'package:shop/utils/navigator/app_router.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      routes: const [
        CatalogTab(),
        CartTab(),
      ],
      lazyLoad: false,
      bottomNavigationBuilder: (context, tabsRouter) {
        return Container(
          decoration: BoxDecoration(
            color: CupertinoColors.white, // Цвет
            boxShadow: [
              BoxShadow(
                color: CupertinoColors.systemGrey.withOpacity(0.5),
                // Цвет тени и её прозрачность
                spreadRadius: 2,
                // Распространение тени
                blurRadius: 4,
                // Радиус размытия тени
              ),
            ],
          ),
          child: CupertinoTabBar(
            currentIndex: tabsRouter.activeIndex,
            onTap: tabsRouter.setActiveIndex,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(ShopAppIcons.catalog),
                label: 'Каталог',
              ),
              BottomNavigationBarItem(
                icon: Icon(ShopAppIcons.cart),
                label: 'Корзина',
              ),
            ],
          ),
        );
      },
    );
/*

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
    );*/
  }
}
