import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:shop/data/dto/products_dto.dart';
import 'package:shop/pages/catalog_page/catalog_page_model.dart';
import 'package:shop/pages/catalog_page/catalog_page_wm.dart';
import 'package:shop/pages/catalog_page/catalog__page_widget.dart';

@RoutePage()
class CatalogPage extends StatelessWidget {
  const CatalogPage({this.request, super.key});

  final ProductsSerializerRequest? request;

  @override
  Widget build(BuildContext context) {
    return CatalogWidget(
        (context) => CatalogScreenWM(CatalogScreenModel(request: request)));
  }
}
