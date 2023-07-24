import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:shop/data/dto/deliveries.dart';
import 'package:shop/data/remote/constants/deliveries_url.dart';

part 'deliveries_service.g.dart';

@RestApi()
abstract class DeliveriesService {
  factory DeliveriesService(Dio dio, {String baseUrl}) = _DeliveriesService;

  @POST(DeliveriesUrl.deliveries)
  Future<Delivery> catalogProductsCreate({
     @Body() required DeliveriesRequest request,
  });
}
