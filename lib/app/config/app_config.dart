import 'package:injectable/injectable.dart';
import 'package:nodelabs_case/app/config/app_credentials.dart';

@Injectable(order: -1)
class AppConfig {
  @singleton
  @preResolve
  AppCredentials credentials() {
    return AppCredentials.prod();
  }
}
