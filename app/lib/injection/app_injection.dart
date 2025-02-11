part of '/app.dart';

final sl = GetIt.instance;

@InjectableInit(externalPackageModulesBefore: [
  ExternalModule(DataPackageModule),
  ExternalModule(AppModule),
])
void configureDependencies() {
  sl.init();
}
