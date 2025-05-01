// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i361;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:moneymemos/core/di/app_module.dart' as _i314;
import 'package:moneymemos/services/network/api_client.dart' as _i820;
import 'package:moneymemos/services/network/dio_client.dart' as _i1025;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final dioClient = _$DioClient();
    final appModule = _$AppModule();
    gh.lazySingleton<_i361.Dio>(() => dioClient.dio);
    gh.factory<String>(
      () => appModule.baseUrl,
      instanceName: 'baseUrl',
    );
    gh.factory<_i820.ApiClient>(() => _i820.ApiClient(
          gh<_i361.Dio>(),
          baseUrl: gh<String>(instanceName: 'baseUrl'),
        ));
    return this;
  }
}

class _$DioClient extends _i1025.DioClient {}

class _$AppModule extends _i314.AppModule {}
