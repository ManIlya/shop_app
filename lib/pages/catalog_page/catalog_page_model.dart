import 'package:elementary/elementary.dart';
import 'package:shop/data/dto/products_dto.dart';
import 'package:shop/utils/app_components.dart';

class CatalogScreenModel extends ElementaryModel {
  CatalogScreenModel({this.request});

  final client = AppComponents().catalogService;

  ProductsSerializerRequest? request;

  Future<List<Product>> loadProducts() async {
    final res =
        await client.catalogProductsCreate(productsSerializerRequest: request);
    return res.results;
  }
}
