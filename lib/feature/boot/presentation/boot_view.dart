import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nodelabs_case/app/design_system/widget/loading.dart';
import 'package:nodelabs_case/app/di/injectable.dart';
import 'package:nodelabs_case/app/navigation/routes.dart';
import 'package:nodelabs_case/core/logger/logger.dart';
import 'package:nodelabs_case/generated/assets.gen.dart';

class BootView extends StatefulWidget {
  const BootView({super.key});

  @override
  State<BootView> createState() => _BootViewState();
}

class _BootViewState extends State<BootView> {
  final initialization = configureDependencies();

  @override
  Widget build(BuildContext context) => Scaffold(
    body: FutureBuilder(
      future: initialization,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          context.router.replacePath(Routes.splash.path);
          logger.d('BootView: Dependencies initialized successfully');
        }
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Assets.images.logo.image(width: 256.w),
            SizedBox(height: 20.h),
            Loading(),
          ],
        );
      },
    ),
  );
}
