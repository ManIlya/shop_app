import 'package:elementary/elementary.dart';
import 'package:shop/data/dto/catalog/products/products_dto.dart';
import 'package:shop/models/catalog/catalog_page/catalog_model.dart';
import 'package:shop/widgets/catalog/catalog_page/catalog_widget.dart';

class CatalogScreenWM extends WidgetModel<CatalogWidget, CatalogScreenModel>
    implements ICatalogScreenWM {
  CatalogScreenWM(super.model);

  final _productListState = EntityStateNotifier<List<Product>>();

  @override
  ListenableState<EntityState<List<Product>>> get productListState =>
      _productListState;

  Future<void> _loadProductList() async {
    final previousData = _productListState.value?.data;
    _productListState.loading(previousData);

    try {
      final res = await model.loadProducts();
      _productListState.content(res);
    } on Exception catch (e) {
      _productListState.error(e, previousData);
    }
  }

  @override
  void initWidgetModel() {
    super.initWidgetModel();
    _loadProductList();
  }

  @override
  void dispose() {
    _productListState.dispose();
    super.dispose();
  }
}

abstract class ICatalogScreenWM extends IWidgetModel {
  ListenableState<EntityState<List<Product>>> get productListState;
}
