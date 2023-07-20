import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';

import 'package:shop/data/dto/catalog/categories/categories_dto.dart';
import 'package:shop/data/dto/catalog/product/product_card_dto.dart';
import 'package:shop/data/dto/catalog/products/products_dto.dart';

part 'client.g.dart';

@RestApi(baseUrl: "https://farm.fbtw.ru")
abstract class RestClient {
  factory RestClient(Dio dio, {String baseUrl}) = _RestClient;

  @POST("/catalog/products/")
  Future<ProductsDTO> catalogProductsCreate({
    @Body() ProductsSerializerRequest? productsSerializerRequest,
  });

  @GET("/catalog/categories/")
  Future<List<Category>> catalogCategoriesList({
    @Query("parent_id") int? parentId,
    @Query("only_leaf") bool onlyLeaf = false,
  });

  @GET("/catalog/product/")
  Future<ProductCardDTO> catalogProductRead({
    @Query("product_id") required int productId,
    @Query("city_fias") String? cityFias,
  });
}
