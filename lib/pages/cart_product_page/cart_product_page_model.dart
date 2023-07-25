import 'package:elementary/elementary.dart';
import 'package:shop/data/dto/request_calculated_cart.dart';

// TODO: cover with documentation
/// Default Elementary model for CartProductPage module
class CartProductPageModel extends ElementaryModel {
  CartProductPageModel({required this.product, super.errorHandler});

  final CartProduct product;
}
