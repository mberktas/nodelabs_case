import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:nodelabs_case/app/extension/context_extension.dart';

class MainView extends StatelessWidget {
  const MainView({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      routes: [PageRouteInfo('ExploreRoute'), PageRouteInfo('AccountRoute')],
      bottomNavigationBuilder: (context, tabsRouter) {
        return BottomNavigationBar(
          currentIndex: tabsRouter.activeIndex,
          onTap: tabsRouter.setActiveIndex,
          selectedItemColor: context.colors.primary,
          unselectedItemColor: context.colors.muted,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.explore),
              label: 'Explore',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_circle),
              label: 'Account',
            ),
          ],
        );
      },
    );
  }
}
