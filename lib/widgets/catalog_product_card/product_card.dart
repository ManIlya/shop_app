import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:shop/data/dto/catalog/products/products_dto.dart';
import 'package:shop/widgets/catalog_product_card/catalog_product_card.dart';

@RoutePage()
class CatalogProductCardScreen extends StatelessWidget {
  const CatalogProductCardScreen({this.preview, required this.id, super.key, });
  final int id;
  final Product? preview;

  @override
  Widget build(BuildContext context) {
    return ProductCard((context)=> ProductCardWM(ProductCardModel(id: id, preview: preview)));
  }
}
