import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:nodelabs_case/app/config/app_config.dart';
import 'package:nodelabs_case/app/di/injectable.dart';
import 'package:nodelabs_case/app/session/session_manager.dart';
import 'package:nodelabs_case/core/logger/logger.dart';

@module
@injectable
abstract class DioModule {
  @lazySingleton
  Dio dio(SessionManager sessionManager) {
    Dio dio = Dio();
    dio.options.headers['Content-Type'] = 'application/json';
    dio.options.baseUrl = sl<AppConfig>().credentials().apiUrl;

    // dio.interceptors.add(
    //   LogInterceptor(
    //     responseBody: true,
    //     requestBody: true,
    //     error: false,
    //     logPrint: (object) => logger.d(object),
    //   ),
    // );

    dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) async {
          final token = sessionManager.token;
          if (token != null) {
            options.headers['Authorization'] = 'Bearer $token';
          }
          handler.next(options);
        },
        onResponse: (e, handler) {
          handler.next(e);
        },
        onError: (e, handler) {
          logger.e(e);
          handler.next(e);
        },
      ),
    );

    return dio;
  }
}
