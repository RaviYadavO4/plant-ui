import 'package:flutter/material.dart';
import 'package:plant_ui/common/extension/text_style_extensions.dart';
import 'package:plant_ui/common/extension/widget_extension.dart';
import 'package:plant_ui/common/theme/scale.dart';
import 'package:plant_ui/config.dart';
import 'package:provider/provider.dart';

import '../../../../common/extension/spacing.dart';
import '../../../../common/theme/app_css.dart';
import '../../../../providers/bottom_screen_provider/bottom_screen_provider.dart';
import '../../../../widgets/text_widgets_common.dart';

class NavigationBarWidgets {
  Widget buildNavItem(BuildContext context) {
    // Define colors for icons and text
    Color defaultTextColor = appColors.gray;
    Color selectedTextColor = appColors.green;

    return Consumer<BottomScreenProvider>(
      builder: (context1, bottomCtrl, child) {
        return StatefulBuilder(
          builder: (context1, setState) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children:
                  bottomCtrl.bottomNavigationBarList.asMap().entries.map((
                    entries,
                  ) {
                    var e = entries.value;
                    var index = entries.key;
                    // Determine color based on the current tab
                    return Row(
                      children: [
                        InkWell(
                          radius: Sizes.s10,
                          focusColor: appColors.trans,
                          highlightColor: appColors.trans,
                          onTap: () => bottomCtrl.tabChange(index),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              bottomCtrl.currentTab == index
                                  ? Image.asset(e['iconDark'],color: bottomCtrl.currentTab == index
                                      ? selectedTextColor
                                      : defaultTextColor,)
                                  : Image.asset(e['icon']),
                              VSpace(Sizes.s2),
                              TextWidgetCommon(
                                text: e['title'],
                                style: AppCss.latoLight13.textColor(
                                  bottomCtrl.currentTab == index
                                      ? selectedTextColor
                                      : defaultTextColor,
                                ),
                                overflow: TextOverflow.ellipsis,
                              ).center().width(Sizes.s50),
                            ],
                          ),
                        ),
                        // if (index == 1) HSpace(Sizes.s50),
                      ],
                    );
                  }).toList(),
            );
          },
        );
      },
    );
  }

  // setting show popup menu

}
