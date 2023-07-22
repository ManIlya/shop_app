import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';

import 'package:shop/data/dto/catalog/products/products_dto.dart';

import '../constants/auth_url.dart';

part 'auth_service.g.dart';

@RestApi(baseUrl: AuthUrl.baseUrl)
abstract class AuthService {
  factory AuthService(Dio dio, {String baseUrl}) = _AuthService;

  @POST(AuthUrl.emailPart1)
  Future<ProductsDTO> catalogProductsCreate({
    @Body() ProductsSerializerRequest? productsSerializerRequest,
  });
}
