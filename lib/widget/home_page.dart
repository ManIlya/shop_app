import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shop/widget/catalog_page/catalog_page.dart';
import 'package:shop/widget/catalog_page/widget/catalog_card.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

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
        children: const [
          CatalogPage(),
          Center(child: Center(child: CatalogCardWidget(),),),
          Center(child: Text('data 3'),),
          Center(child: Text('data 4'),),
          Center(child: Text('data 5'),),
        ],
      ),
      bottomNavigationBar: CupertinoTabBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.list_bullet),),
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.search_circle),),
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.heart),),
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.cart),),
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.person),),
        ],
    currentIndex: _index,
onTap: (index){
          setState(() {
            _index = index;
          });
},
      ),

    );
  }
}
