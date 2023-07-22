import 'package:auto_route/auto_route.dart';
import 'package:dio/dio.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/cupertino.dart';
import 'package:shop/data/dto/catalog/products/products_dto.dart';
import 'package:shop/data/remote/client.dart';
import 'package:shop/widgets/catalog_page/widget/catalog_card.dart';
@RoutePage()
class CatalogPage extends StatelessWidget {
  const CatalogPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CatalogScreen((context) => CatalogScreenWM(CatalogScreenModel()));
  }
}

class CatalogScreenModel extends ElementaryModel {
  Future<List<Product>> loadProducts() async {
    final client = RestClient(Dio());
    final res = await client.catalogProductsCreate();
    return res.results;
  }
}

class CatalogScreenWM extends WidgetModel<CatalogScreen, CatalogScreenModel>
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

class CatalogScreen extends ElementaryWidget<ICatalogScreenWM> {
  const CatalogScreen(super.wmFactory, {super.key});

  static const sliverPadding = 16.0;
  static const crossAxisSpacing = 30.0;
  static const height = 164.0;
  static const weight = 250.0;

  @override
  Widget build(ICatalogScreenWM wm) {
    return SafeArea(
      child: CustomScrollView(
        slivers: [
          SliverPadding(
            padding: const EdgeInsets.all(sliverPadding),
            sliver: EntityStateNotifierBuilder<List<Product>>(
              listenableEntityState: wm.productListState,
              loadingBuilder: (_, __) {
                return const SliverFillRemaining(
                  child: Center(
                    child: CupertinoActivityIndicator(),
                  ),
                );
              },
              errorBuilder: (_, __, ___) {
                return const SliverFillRemaining(
                  child: Center(
                    child: Text('ошибка повторите позже'),
                  ),
                );
              },
              builder: (context, value) {
                final products = value ?? [];
                return SliverGrid.builder(
                  gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                    //crossAxisCount: 2,
                    crossAxisSpacing: crossAxisSpacing,
                    mainAxisSpacing: sliverPadding,
                    childAspectRatio: height / weight,
                    maxCrossAxisExtent: height,
                  ),
                  itemBuilder: (context, index) {
                    return CatalogCardWidget(
                      product: products[index],
                    );
                  },
                  itemCount: products.length,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
