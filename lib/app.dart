import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nodelabs_case/app/navigation/router.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

class App extends StatelessWidget {
  App({super.key});

  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(402, 844),
      child: ShadApp.router(
        routerConfig: _appRouter.config(),
        supportedLocales: context.supportedLocales,
        locale: context.locale,
        localizationsDelegates: context.localizationDelegates,
        theme: ShadThemeData(
          brightness: Brightness.light,
          colorScheme: ShadZincColorScheme.light(),
        ),
        darkTheme: ShadThemeData(
          brightness: Brightness.dark,
          colorScheme: ShadZincColorScheme.dark(),
          // radius: BorderRadius.circular(12),
        ),
      ),
    );
  }
}
