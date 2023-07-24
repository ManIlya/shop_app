import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';
import 'package:shop/data/dto/categories_dto.dart';
import 'package:shop/data/dto/deliveries.dart';
import 'package:shop/data/dto/products_dto.dart';


import 'constants/catalog_url.dart';

part 'catalog_service.g.dart';

@RestApi()
abstract class CatalogService {
  factory CatalogService(Dio dio, {String baseUrl}) = _CatalogService;

  @POST(CatalogUrl.products)
  Future<ProductsDTO> catalogProductsCreate({
    @Body() ProductsSerializerRequest? productsSerializerRequest,
  });

  @GET(CatalogUrl.categories)
  Future<List<Category>> catalogCategoriesList({
    @Query("parent_id") int? parentId,
    @Query("only_leaf") bool onlyLeaf = false,
  });

  @GET(CatalogUrl.product)
  Future<Product> catalogProductRead({
    @Query("product_id") required int productId,
    @Query("city_fias") String? cityFias,
  });


  @POST(CatalogUrl.payments)
  Future<List<Payment>> getPayments({
    @Body() required PaymentsRequest request,
  });


  @POST(CatalogUrl.deliveries)
  Future<List<Delivery>> getDeliveries({
    @Body() required DeliveriesRequest request,
  });

}
