import 'package:dio/dio.dart';
import 'package:elementary/elementary.dart';
import 'package:shop/data/dto/catalog/products/products_dto.dart';
import 'package:shop/data/remote/catalog/catalog_service.dart';

class CatalogScreenModel extends ElementaryModel {
  CatalogScreenModel({this.request});

  ProductsSerializerRequest? request;

  Future<List<Product>> loadProducts() async {
    final client = CatalogService(Dio());
    final res =
        await client.catalogProductsCreate(productsSerializerRequest: request);
    return res.results;
  }
}
