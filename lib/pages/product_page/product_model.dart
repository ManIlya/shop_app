import 'package:elementary/elementary.dart';
import 'package:shop/data/dto/products_dto.dart';
import 'package:shop/utils/app_components.dart';

class ProductModel extends ElementaryModel {
  final Product? _preview;
  final int id;
  final client = AppComponents().catalogService;

  ProductModel({Product? preview, required this.id}) : _preview = preview;

  Future<Product> loadProducts() async {
    final res = await client.catalogProductRead(productId: id);
    return res;
  }

  Product? get preview => _preview;
}
