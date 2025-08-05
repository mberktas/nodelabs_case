// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i361;
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i558;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import '../../core/networking/dio_module.dart' as _i932;
import '../../core/storage/secure_storage.dart' as _i108;
import '../../feature/account/data/datasource/account_api.dart' as _i249;
import '../../feature/account/data/repository/account_repository_impl.dart'
    as _i996;
import '../../feature/account/domain/repository/account_repository.dart'
    as _i429;
import '../../feature/account/presentation/bloc/account_bloc.dart' as _i124;
import '../../feature/auth/data/datasource/auth_api.dart' as _i393;
import '../../feature/auth/data/repository/auth_repository_impl.dart' as _i648;
import '../../feature/auth/domain/repository/auth_repository.dart' as _i884;
import '../../feature/auth/presentation/bloc/login/login_bloc.dart' as _i604;
import '../../feature/auth/presentation/bloc/signup/signup_bloc.dart' as _i297;
import '../../feature/boot/presentation/bloc/splash_bloc.dart' as _i844;
import '../../feature/explore/data/datasource/movie_api.dart' as _i371;
import '../../feature/explore/data/repository/explore_repository_impl.dart'
    as _i662;
import '../../feature/explore/domain/repository/explore_repository.dart'
    as _i705;
import '../../feature/explore/presentation/bloc/explore_bloc.dart' as _i1059;
import '../config/app_config.dart' as _i650;
import '../service/secure_storage_service.dart' as _i142;
import '../service/session_storage_service.dart' as _i683;
import '../session/session_manager.dart' as _i432;

// initializes the registration of main-scope dependencies inside of GetIt
_i174.GetIt $initGetIt(
  _i174.GetIt getIt, {
  String? environment,
  _i526.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i526.GetItHelper(getIt, environment, environmentFilter);
  final secureStorage = _$SecureStorage();
  final dioModule = _$DioModule();
  gh.factory<_i650.AppConfig>(() => _i650.AppConfig());
  gh.singleton<_i558.FlutterSecureStorage>(() => secureStorage.storage);
  gh.factory<_i142.SecureStorageService>(
    () => _i142.SecureStorageService(gh<_i558.FlutterSecureStorage>()),
  );
  gh.factory<_i683.SessionStorageService>(
    () => _i683.SessionStorageService(gh<_i142.SecureStorageService>()),
  );
  gh.singleton<_i432.SessionManager>(
    () => _i432.SessionManager(gh<_i683.SessionStorageService>()),
  );
  gh.factory<_i844.SplashBloc>(
    () => _i844.SplashBloc(gh<_i432.SessionManager>()),
  );
  gh.lazySingleton<_i361.Dio>(() => dioModule.dio(gh<_i432.SessionManager>()));
  gh.factoryParam<_i393.AuthApi, String?, dynamic>(
    (baseUrl, _) => _i393.AuthApi(gh<_i361.Dio>(), baseUrl: baseUrl),
  );
  gh.factoryParam<_i371.MovieApi, String?, dynamic>(
    (baseUrl, _) => _i371.MovieApi(gh<_i361.Dio>(), baseUrl: baseUrl),
  );
  gh.factoryParam<_i249.AccountApi, String?, dynamic>(
    (baseUrl, _) => _i249.AccountApi(gh<_i361.Dio>(), baseUrl: baseUrl),
  );
  gh.factory<_i705.ExploreRepository>(
    () => _i662.ExploreRepositoryImpl(gh<_i371.MovieApi>()),
  );
  gh.factory<_i429.AccountRepository>(
    () => _i996.AccountRepositoryImpl(gh<_i249.AccountApi>()),
  );
  gh.factory<_i884.AuthRepository>(
    () => _i648.AuthRepositoryImpl(gh<_i393.AuthApi>()),
  );
  gh.factory<_i297.SignupBloc>(
    () => _i297.SignupBloc(
      gh<_i884.AuthRepository>(),
      gh<_i432.SessionManager>(),
    ),
  );
  gh.factory<_i604.LoginBloc>(
    () =>
        _i604.LoginBloc(gh<_i884.AuthRepository>(), gh<_i432.SessionManager>()),
  );
  gh.factory<_i1059.ExploreBloc>(
    () => _i1059.ExploreBloc(gh<_i705.ExploreRepository>()),
  );
  gh.factory<_i124.AccountBloc>(
    () => _i124.AccountBloc(
      gh<_i429.AccountRepository>(),
      gh<_i432.SessionManager>(),
    ),
  );
  return getIt;
}

class _$SecureStorage extends _i108.SecureStorage {}

class _$DioModule extends _i932.DioModule {}
