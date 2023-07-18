import 'package:flutter/material.dart';
import 'package:shop/widget/catalog_page/widget/catalog_card.dart';

class CatalogPage extends StatelessWidget {
  const CatalogPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScrollView(
        slivers: [
          SliverGrid(
            delegate: SliverChildBuilderDelegate((context, index) {
              return const CatalogCardWidget();
            }, childCount: 20),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                childAspectRatio: 8 / 11,),
          ),
        ],
      ),
    );
  }
}
