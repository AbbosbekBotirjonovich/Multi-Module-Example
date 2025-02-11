part of '/data.dart';

@InjectableInit.microPackage(externalPackageModulesBefore: [
  ExternalModule(RemotePackageModule),
])
void initDataModule() {}
