import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:nodelabs_case/app/design_system/widget/loading.dart';
import 'package:nodelabs_case/app/di/injectable.dart';
import 'package:nodelabs_case/app/navigation/routes.dart';
import 'package:nodelabs_case/core/logger/logger.dart';

class BootPage extends StatefulWidget {
  const BootPage({super.key});

  @override
  State<BootPage> createState() => _BootPageState();
}

class _BootPageState extends State<BootPage> {
  final initialization = configureDependencies();

  @override
  Widget build(BuildContext context) => Scaffold(
    body: FutureBuilder(
      future: initialization,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          context.router.replacePath(Routes.login.path);
          logger.d('BootPage: Dependencies initialized successfully');
        }
        return const Loading();
      },
    ),
  );
}
