// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:connectivity_plus/connectivity_plus.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:weatherapp/app/core/network/network.dart' as _i7;
import 'package:weatherapp/app/core/storage/secure_storage.dart' as _i5;
import 'package:weatherapp/features/common/presentation/cubit/network_cubit.dart'
    as _i3;
import 'package:weatherapp/features/theme/cubit/theme_cubit.dart' as _i6;
import 'package:weatherapp/features/weather/domain/repositories/weather_repository.dart'
    as _i9;
import 'package:weatherapp/features/weather/infrastructure/data_sources/weather_remote_data_source.dart'
    as _i8;
import 'package:weatherapp/features/weather/infrastructure/repositories/weather_repository.dart'
    as _i10;
import 'package:weatherapp/features/weather/presentation/cubit/weather_cubit.dart'
    as _i11;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i1.GetIt> init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.lazySingleton<_i3.NetworkInfoCubit>(
        () => _i3.NetworkInfoCubit(gh<_i4.Connectivity>()));
    gh.singleton<_i5.SecureStorage>(() => const _i5.SecureStorage());
    gh.lazySingleton<_i6.ThemeCubit>(() => _i6.ThemeCubit());
    await gh.singletonAsync<_i7.Network>(
      () {
        final i = _i7.Network(gh<_i5.SecureStorage>());
        return i.initialize().then((_) => i);
      },
      preResolve: true,
    );
    gh.lazySingleton<_i8.WeatherRemoteDataSource>(
        () => _i8.WeatherRemoteDataSource(gh<_i7.Network>()));
    gh.lazySingleton<_i9.WeatherRepository>(
        () => _i10.WeatherRepositoryImpl(gh<_i8.WeatherRemoteDataSource>()));
    gh.lazySingleton<_i11.WeatherCubit>(
        () => _i11.WeatherCubit(gh<_i9.WeatherRepository>()));
    return this;
  }
}
