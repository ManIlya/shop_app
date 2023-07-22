import 'package:elementary/elementary.dart';
import 'package:flutter/cupertino.dart';
import 'package:shop/data/dto/catalog/products/products_dto.dart';
import 'package:shop/models/catalog/product_card/product_model.dart';
import 'package:shop/utils/converter.dart';
import 'package:shop/widgets/catalog/product_page/product_widget.dart';

class ProductWM extends WidgetModel<ProductWidget, ProductModel>
    implements IProductWM {
  ProductWM(super.model);

  final EntityStateNotifier<Product> _productState = EntityStateNotifier();

  @override
  void initWidgetModel() {
    super.initWidgetModel();
    final preview = model.getPreview();
    if (preview != null) {
      _productState.content(preview);
    }
    _loadProductState();
  }

  Future<void> _loadProductState() async {
    final previousData = _productState.value?.data;
    _productState.loading(previousData);

    try {
      final res = await model.loadProducts();
      _productState.content(res);
    } on Exception catch (e) {
      _productState.error(e, previousData);
    }
  }

  @override
  ListenableState<EntityState<Product>> get productState => _productState;

  @override
  String discountString() {
    final product = _productState.value?.data;
    if (product != null) {
      final price = product.price;
      final oldPrice = product.oldPrice;
      if (oldPrice != null) {
        return '- ${PriceConvert.convertPrice((((oldPrice - price) / oldPrice).toDouble() * 100))} %';
      }
    }
    return '';
  }

  @override
  CupertinoThemeData get cupertinoTheme => CupertinoTheme.of(context);
}

abstract class IProductWM extends IWidgetModel {
  ListenableState<EntityState<Product>> get productState;

  CupertinoThemeData get cupertinoTheme;

  String discountString();
}
