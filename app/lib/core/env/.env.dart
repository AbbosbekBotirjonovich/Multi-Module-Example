part of '/app.dart';

enum Environment {
  dev,
  preRelease,
  prod,
}

abstract class AppEnvironment {
  String get baseUrl;

  String get appName;
}

class DevEnvironment implements AppEnvironment {
  @override
  String get baseUrl => '';

  @override
  String get appName => '';
}

class ProdEnvironment implements AppEnvironment {
  @override
  String get baseUrl => '';

  @override
  String get appName => '';
}

class AppConfig {
  AppConfig._internal();

  static final AppConfig instance = AppConfig._internal();

  factory AppConfig() => instance;

  late AppEnvironment config;

  late Environment _currentEnv;

  void initEnvironment(Environment env) {
    _currentEnv = env;
    if (env == Environment.dev) {
      config = DevEnvironment();
    } else {
      config = ProdEnvironment();
    }
  }

  bool get isProd => _currentEnv == Environment.prod;

  bool get isDev => _currentEnv == Environment.dev;
}
