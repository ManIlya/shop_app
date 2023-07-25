import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:shop/data/dto/products_dto.dart';
import 'package:shop/pages/product_page/product_model.dart';
import 'package:shop/pages/product_page/product_wm.dart';
import 'package:shop/pages/product_page/product_widget.dart';

@RoutePage()
class ProductPage extends StatelessWidget {
  const ProductPage({
    this.preview,
    required this.id,
    super.key,
  });

  final int id;
  final Product? preview;

  @override
  Widget build(BuildContext context) {
    return ProductWidget(
        (context) => ProductWM(ProductModel(id: id, preview: preview)));
  }
}
