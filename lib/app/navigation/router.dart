import 'package:auto_route/auto_route.dart';
import 'package:nodelabs_case/app/navigation/routes.dart';
import 'package:nodelabs_case/feature/auth/presentation/login_view.dart';
import 'package:nodelabs_case/feature/boot/presentation/boot_page.dart';

@AutoRouterConfig(replaceInRouteName: 'Page|Screen|View,Route')
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
    NamedRouteDef(
      initial: true,
      name: Routes.boot.name,
      path: Routes.boot.path,
      builder: (context, data) => const BootPage(),
    ),

    NamedRouteDef(
      name: Routes.login.name,
      path: Routes.login.path,
      builder: (context, data) => const LoginView(),
    ),
  ];
}
