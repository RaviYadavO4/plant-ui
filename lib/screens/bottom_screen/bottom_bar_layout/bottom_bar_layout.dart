import 'package:flutter/material.dart';
import 'package:plant_ui/common/theme/scale.dart';
import 'package:plant_ui/config.dart';
import 'package:plant_ui/screens/bottom_screen/bottom_bar_layout/layout/app_bar_layout/home_appbar_layout.dart';
import 'package:plant_ui/screens/bottom_screen/bottom_bar_layout/layout/app_bar_layout/layout/drawer/drawer_layout.dart';
import 'package:plant_ui/screens/bottom_screen/bottom_bar_layout/layout/bottom_navigation_layout.dart';
import 'package:provider/provider.dart';

import '../../../providers/bottom_screen_provider/bottom_screen_provider.dart';
import '../../../widgets/common_state.dart';

class BottomBarLayout extends StatefulWidget {
  const BottomBarLayout({super.key});

  @override
  State<BottomBarLayout> createState() => _BottomBarLayoutState();
}

class _BottomBarLayoutState extends State<BottomBarLayout> {
  @override
  Widget build(BuildContext context) {
    return Consumer<BottomScreenProvider>(
      builder: (context1, bottomCtrl, child) {
        return StatefulWrapper(
          onInit:
              () => Future.delayed(
                DurationClass.ms150,
              ).then((value) => bottomCtrl.onInit()),
          child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: appColors.screenBg,
            key: bottomCtrl.bottomNavScaffoldKey,
            extendBody: true,
            // main screen drawer layout
            drawer: const DrawerLayout(),
            appBar: HomeAppBar(
              bellTap: () => '',
              // route.pushNamed(context, routeName.emptyNotificationScreen),
              onTap:
                  () =>
                      bottomCtrl.bottomNavScaffoldKey.currentState!
                          .openDrawer(),
            ),
            // floatingActionButtonLocation:
            //     FloatingActionButtonLocation.centerDocked,
            // floatingActionButton: const FloatingActionButtonLayout(),
            bottomNavigationBar: const BottomNavigationLayout(),
            body: bottomCtrl.screens[bottomCtrl.currentTab],
          ),
        );
      },
    );
  }
}
