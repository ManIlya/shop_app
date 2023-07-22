import 'package:dio/dio.dart';
import 'package:elementary/elementary.dart';
import 'package:shop/data/dto/catalog/products/products_dto.dart';
import 'package:shop/data/remote/catalog/catalog_service.dart';

class ProductModel extends ElementaryModel {
  final Product? preview;
  final int id;

  ProductModel({this.preview, required this.id});

  Future<Product> loadProducts() async {
    final client = CatalogService(Dio());
    final res = await client.catalogProductRead(productId: id);
    return res;
  }

  Product? getPreview() {
    return preview;
  }
}
