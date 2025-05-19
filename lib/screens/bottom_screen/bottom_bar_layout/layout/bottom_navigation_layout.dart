import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:plant_ui/common/theme/scale.dart';
import 'package:plant_ui/config.dart';
import 'package:plant_ui/screens/bottom_screen/bottom_bar_layout/layout/navigation_widgets.dart';
import 'package:provider/provider.dart';

import '../../../../providers/bottom_screen_provider/bottom_screen_provider.dart';

// bottom navigation Bar layout
class BottomNavigationLayout extends StatelessWidget {
  const BottomNavigationLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<BottomScreenProvider>(
        builder: (context1, bottomCtrl, child) {
      return PopScope(
        canPop: false,
        onPopInvoked: (didPop) {
          if (didPop) {
            return;
          }
          SystemNavigator.pop();
        },
        child: ClipRRect(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(Sizes.s15),
                topRight: Radius.circular(Sizes.s15)),
            child: BottomAppBar(
                shadowColor: appColors.darkText,
                color: appColors.lightGreen,
                height: Sizes.s70,
                shape: null,
                notchMargin: 0,
                elevation: Sizes.s10,
                child: NavigationBarWidgets().buildNavItem(context))),
      );
    });
  }
}
