import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nodelabs_case/app/design_system/widget/loading.dart';
import 'package:nodelabs_case/app/di/injectable.dart';
import 'package:nodelabs_case/app/navigation/routes.dart';
import 'package:nodelabs_case/feature/boot/presentation/bloc/splash_bloc.dart';
import 'package:nodelabs_case/generated/assets.gen.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          sl<SplashBloc>()..add(const SplashEvent.checkSession()),
      child: const _SplashContent(),
    );
  }
}

class _SplashContent extends StatelessWidget {
  const _SplashContent();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SplashBloc, SplashState>(
      listener: (context, state) {
        state.when(
          loading: () {},
          success: () {
            context.router.popUntilRoot();
            context.router.replacePath(Routes.explore.path);
          },
          error: (message) {},
          noSession: () {
            context.router.popUntilRoot();
            context.router.replacePath(Routes.login.path);
          },
          expiredToken: () {
            context.router.popUntilRoot();
            context.router.replacePath(Routes.login.path);
          },
        );
      },
      builder: (context, state) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Assets.images.logo.image(width: 256.w),
            SizedBox(height: 20.h),
            const DSLoading(),
          ],
        );
      },
    );
  }
}
