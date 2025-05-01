import 'package:injectable/injectable.dart';
import 'package:moneymemos/core/const/api_const.dart';

@module
abstract class AppModule {
  @Named('baseUrl')
  String get baseUrl => ApiConst.baseUrl;
}
