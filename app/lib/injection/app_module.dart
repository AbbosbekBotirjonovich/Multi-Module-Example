part of '/app.dart';

@module
abstract class AppModule {
  @Named("BaseUrl")
  String get baseUrl => AppConfig().config.baseUrl;

  @Named("Chuck")
  ChuckDioInterceptor get chuck => Chuck(
        navigatorKey: rootNavigatorKey,
        showNotification: !AppConfig().isProd,
      ).getDioInterceptor();

  @Named('header')
  Map<String, dynamic> getHeader() {
    return <String, dynamic>{};
  }
}
