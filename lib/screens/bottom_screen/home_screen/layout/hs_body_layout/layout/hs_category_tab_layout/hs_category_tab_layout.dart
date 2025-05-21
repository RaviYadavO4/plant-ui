import 'package:flutter/material.dart';
import 'package:plant_ui/common/extension/widget_extension.dart';
import 'package:plant_ui/config.dart';
import 'package:plant_ui/providers/bottom_screen_provider/home_screen_provider.dart';
import 'package:plant_ui/widgets/text_widgets_common.dart';
import 'package:provider/provider.dart';

class HsCategoryTabLayout extends StatelessWidget {
  const HsCategoryTabLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<HomeScreenProvider>(builder: (context,homeCtrl,child){
      return  SizedBox(
              height: 35.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: homeCtrl.categories.asMap().entries.map((entries){
                var e = entries.value;
                // var index = entries.key;

                print('entries '+"${e["category"]}");

                  return Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextWidgetCommon(
                            text: "${e["category"]}",
                            style: TextStyle(
                              color: homeCtrl.selectedCategory == e["id"]
                                  ? appColors.green
                                  : appColors.black.withOpacity(0.7),
                              fontSize: 16.0,
                            ),
                          ),
                          if (homeCtrl.selectedCategory == e["id"])
                             CircleAvatar(
                              radius: 3,
                              backgroundColor: appColors.green,
                            )
                        ],
                      ).inkWell(onTap: () => homeCtrl.selectCategoriesChange(e["id"]),);

                }).toList()
                
              ),
            );
    });
  }
}