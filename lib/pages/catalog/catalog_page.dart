import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:shop/data/dto/catalog/products/products_dto.dart';
import 'package:shop/models/catalog/catalog_page/catalog_model.dart';
import 'package:shop/widget_models/catalog/catalog_page/catalog_widget_model.dart';
import 'package:shop/widgets/catalog/catalog_page/catalog_widget.dart';

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
