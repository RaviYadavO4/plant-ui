import 'package:flutter/material.dart';
import 'package:plant_ui/common/theme/scale.dart';
import 'package:plant_ui/config.dart';
import 'package:plant_ui/providers/bottom_screen_provider/bottom_screen_provider.dart';
import 'package:provider/provider.dart';

import 'drawer_widgets.dart';

class DrawerLayout extends StatefulWidget {
  const DrawerLayout({super.key});

  @override
  _DrawerLayoutState createState() => _DrawerLayoutState();
}

class _DrawerLayoutState extends State<DrawerLayout> {
  @override
  Widget build(BuildContext context) {
    return Consumer<BottomScreenProvider>(
      builder: (context1, bottomCtrl, child) {
        return Drawer(
          backgroundColor: appColors.screenBg,
          width: Sizes.s215,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  DrawerWidgets().drawerHeaderLayout(context),

                  ...bottomCtrl.drawerList.asMap().entries.map((e) {
          //drawer items list layout
          return DrawerWidgets()
              .drawerItemsLists(context, e, bottomCtrl);
          })
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
