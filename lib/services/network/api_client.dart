import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:moneymemos/core/const/api_const.dart';
import 'package:retrofit/retrofit.dart';
part 'api_client.g.dart';

@RestApi(baseUrl: ApiConst.baseUrl)
@injectable
abstract class ApiClient {
  @factoryMethod
  factory ApiClient(Dio dio, {@Named('baseUrl') String baseUrl}) = _ApiClient;
}
