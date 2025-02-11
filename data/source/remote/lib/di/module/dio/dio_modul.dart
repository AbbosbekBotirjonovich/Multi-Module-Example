import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@module
abstract class DioModule {
  @lazySingleton
  Dio dio(
    @Named("BaseUrl") String baseUrl,
    @Named("Chuck") InterceptorsWrapper chuck,
    @Named("header") Map<String, dynamic> header,
  ) {
    Dio dio = Dio(
      BaseOptions(
          contentType: 'application/json',
          connectTimeout: const Duration(seconds: 20),
          receiveTimeout: const Duration(seconds: 20),
          baseUrl: baseUrl,
          sendTimeout: const Duration(seconds: 20)),
    );
    dio.interceptors.addAll(
      [
        InterceptorsWrapper(
          onError: (error, handler) {
            if (error.response?.statusCode == 401) {
              ///
            }
            handler.next(error);
          },
          onRequest: (options, handler) {
            options.data ??= {};
            options.headers.addAll(header);
            handler.next(options);
          },
        ),
        chuck,
      ],
    );
    return dio;
  }
}
