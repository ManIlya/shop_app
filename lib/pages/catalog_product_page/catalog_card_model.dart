import 'package:elementary/elementary.dart';
import 'package:shop/data/dto/products_dto.dart';

class CatalogCardModel extends ElementaryModel {
  final Product product;

  CatalogCardModel(this.product);

  void putInCart() {}
}
