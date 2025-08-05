import 'package:auto_route/auto_route.dart';
import 'package:nodelabs_case/app/navigation/routes.dart';
import 'package:nodelabs_case/feature/account/presentation/account_view.dart';
import 'package:nodelabs_case/feature/auth/presentation/login_view.dart';
import 'package:nodelabs_case/feature/auth/presentation/signup_view.dart';
import 'package:nodelabs_case/feature/boot/presentation/boot_view.dart';
import 'package:nodelabs_case/feature/boot/presentation/splash_view.dart';
import 'package:nodelabs_case/feature/explore/presentation/explore_view.dart';
import 'package:nodelabs_case/feature/main/presentation/main_view.dart';

@AutoRouterConfig(replaceInRouteName: 'Page|Screen|View,Route')
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
    NamedRouteDef(
      initial: true,
      name: Routes.boot.name,
      path: Routes.boot.path,
      builder: (context, data) => const BootView(),
    ),

    NamedRouteDef(
      name: Routes.splash.name,
      path: Routes.splash.path,
      builder: (context, data) => const SplashView(),
    ),

    NamedRouteDef(
      name: Routes.login.name,
      path: Routes.login.path,
      builder: (context, data) => const LoginView(),
    ),

    NamedRouteDef(
      name: Routes.signup.name,
      path: Routes.signup.path,
      builder: (context, data) => const SignupView(),
    ),

    NamedRouteDef(
      name: Routes.main.name,
      path: Routes.main.path,
      builder: (context, data) => const MainView(),
      children: [
        NamedRouteDef(
          name: Routes.explore.name,
          path: Routes.explore.path,
          builder: (context, data) => const ExploreView(),
        ),
        NamedRouteDef(
          name: Routes.account.name,
          path: Routes.account.path,
          builder: (context, data) => const AccountView(),
        ),
      ],
    ),
  ];
}
