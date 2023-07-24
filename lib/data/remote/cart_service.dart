import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';
import 'package:shop/data/dto/cart_cart.dart';
import 'package:shop/data/dto/request_calculated_cart.dart';

import 'package:shop/data/remote/constants/cart_url.dart';


part 'cart_service.g.dart';

@RestApi()
abstract class CartService {
  factory CartService(Dio dio, {String baseUrl}) = _CartService;

  @POST(CartUrl.cartCalculate)
  Future<CalculatedCart> cartCalculate(
      {
    @Body() RequestCalculatedCart? request,
  });

  @POST(CartUrl.cartCart)
  Future<CalculatedCart> postCart({
    @Body() required CartUpdate request,
  });


  @PUT(CartUrl.cartCart)
  Future<CalculatedCart> cartCartUpdate({
    @Body() required CartUpdate cartUpdate,
  });


  @DELETE(CartUrl.cartCart)
  Future<CalculatedCart> cartCartDelete({
    @Body() required CartAdd cartDelete,
  });
}
