import 'package:flutter/material.dart';
import 'package:plant_ui/common/extension/widget_extension.dart';
import 'package:plant_ui/common/theme/scale.dart';
import 'package:plant_ui/providers/bottom_screen_provider/home_screen_provider.dart';
import 'package:plant_ui/screens/bottom_screen/home_screen/layout/hs_body_layout/layout/hs_category_tab_layout/hs_category_tab_layout.dart';
import 'package:plant_ui/screens/bottom_screen/home_screen/layout/hs_body_layout/layout/hs_search_bar/hs_search_bar_layout.dart';
import 'package:plant_ui/widgets/common_state.dart';
import 'package:provider/provider.dart';

class HomeBodyLayout extends StatefulWidget {
  const HomeBodyLayout({super.key});

  @override
  State<HomeBodyLayout> createState() => _HomeBodyLayoutState();
}

class _HomeBodyLayoutState extends State<HomeBodyLayout> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const ClampingScrollPhysics(),
      child: Consumer<HomeScreenProvider>(
        builder: (context, homeCtrl, child) {
           return StatefulWrapper(
            onInit: ()=> Future.delayed(DurationClass.ms150).then((value) => homeCtrl.onInit()),
            child:  const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                HsSearchBarLayout(),
                HsCategoryTabLayout(),
              ],
            ).paddingOnly(
              bottom: Sizes.s100,
            ),
          );
        },
      ),
    );
  }
}
