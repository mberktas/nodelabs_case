import 'package:auto_route/auto_route.dart';

@AutoRouterConfig(replaceInRouteName: 'Page|Screen|View,Route')
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
    // NamedRouteDef(
    //   name: Routes.home.name,
    //   path: Routes.home.path,
    //   // builder: (context, data) => const HomeRoute(),
    // );
  ];
}
