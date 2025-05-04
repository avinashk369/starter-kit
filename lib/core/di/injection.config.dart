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
import 'package:moneymemos/core/theme/bloc/theme_bloc.dart' as _i254;
import 'package:moneymemos/features/auth/data/repositories/auth_repository_impl.dart'
    as _i602;
import 'package:moneymemos/features/auth/domain/repositories/auth_repository.dart'
    as _i823;
import 'package:moneymemos/features/auth/presentation/bloc/auth_bloc.dart'
    as _i434;
import 'package:moneymemos/features/dashboard/data/repositories/dashboard_repository_impl.dart'
    as _i719;
import 'package:moneymemos/features/dashboard/domain/repositories/dashboard_repository.dart'
    as _i786;
import 'package:moneymemos/features/splash/presentation/bloc/splash_bloc.dart'
    as _i1061;
import 'package:moneymemos/features/welcome/presentation/bloc/welcome_bloc.dart'
    as _i487;
import 'package:moneymemos/services/network/api_client.dart' as _i820;
import 'package:moneymemos/services/network/dio_client.dart' as _i1025;
import 'package:moneymemos/widgets/bottom_nav/bottom_navigation_bloc.dart'
    as _i646;

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
    gh.factory<_i254.ThemeBloc>(() => _i254.ThemeBloc());
    gh.factory<_i487.WelcomeBloc>(() => _i487.WelcomeBloc());
    gh.factory<_i646.BottomNavigationBloc>(() => _i646.BottomNavigationBloc());
    gh.factory<_i1061.SplashBloc>(() => _i1061.SplashBloc());
    gh.lazySingleton<_i361.Dio>(() => dioClient.dio);
    gh.factory<String>(
      () => appModule.baseUrl,
      instanceName: 'baseUrl',
    );
    gh.factory<_i823.AuthRepository>(() => _i602.AuthRepositoryImpl());
    gh.factory<_i434.AuthBloc>(
        () => _i434.AuthBloc(authRepository: gh<_i823.AuthRepository>()));
    gh.factory<_i820.ApiClient>(() => _i820.ApiClient(
          gh<_i361.Dio>(),
          baseUrl: gh<String>(instanceName: 'baseUrl'),
        ));
    gh.factory<_i786.DashboardRepository>(
        () => _i719.DashboardRepositoryImpl(apiClient: gh<_i820.ApiClient>()));
    return this;
  }
}

class _$DioClient extends _i1025.DioClient {}

class _$AppModule extends _i314.AppModule {}
