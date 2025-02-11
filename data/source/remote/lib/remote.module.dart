//@GeneratedMicroModule;RemotePackageModule;package:remote/remote.module.dart
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i687;

import 'package:dio/dio.dart' as _i361;
import 'package:injectable/injectable.dart' as _i526;
import 'package:remote/di/module/dio/dio_modul.dart' as _i873;
import 'package:remote/service/auth/auth_service.dart' as _i788;

class RemotePackageModule extends _i526.MicroPackageModule {
// initializes the registration of main-scope dependencies inside of GetIt
  @override
  _i687.FutureOr<void> init(_i526.GetItHelper gh) {
    final dioModule = _$DioModule();
    gh.lazySingleton<_i361.Dio>(() => dioModule.dio(
          gh<String>(instanceName: 'BaseUrl'),
          gh<_i361.InterceptorsWrapper>(instanceName: 'Chuck'),
          gh<Map<String, dynamic>>(instanceName: 'header'),
        ));
    gh.lazySingleton<_i788.AuthService>(
        () => _i788.AuthService(gh<_i361.Dio>()));
  }
}

class _$DioModule extends _i873.DioModule {}
