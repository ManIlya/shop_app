import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shop/widgets/catalog_page/catalog_page.dart';
import 'package:shop/widgets/catalog_page/widget/catalog_card.dart';
import 'package:shop/widgets/icons/shop_app_icons_icons.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _index,
        children: [
          CatalogScreen((context) => CatalogScreenWM(CatalogScreenModel())),
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
      ),
      bottomNavigationBar: CupertinoTabBar(
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
