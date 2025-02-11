//@GeneratedMicroModule;DataPackageModule;package:data/data.module.dart
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i687;

import 'package:data/repository/auth/auth_repository.dart' as _i913;
import 'package:injectable/injectable.dart' as _i526;
import 'package:remote/remote.dart' as _i304;

class DataPackageModule extends _i526.MicroPackageModule {
// initializes the registration of main-scope dependencies inside of GetIt
  @override
  _i687.FutureOr<void> init(_i526.GetItHelper gh) async {
    await _i304.RemotePackageModule().init(gh);
    gh.lazySingleton<_i913.AuthRepository>(
        () => _i913.AuthRepository(gh<_i304.AuthService>()));
  }
}
