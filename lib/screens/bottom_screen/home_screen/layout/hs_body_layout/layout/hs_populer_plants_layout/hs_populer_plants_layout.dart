import 'package:flutter/material.dart';
import 'package:plant_ui/config.dart';
import 'package:plant_ui/providers/bottom_screen_provider/home_screen_provider.dart';
import 'package:provider/provider.dart';

class HsPopulerPlantsLayout extends StatelessWidget {
  const HsPopulerPlantsLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<HomeScreenProvider>(builder: (context,homeCtrl,child){
      return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Popular',
                    style: TextStyle(
                      color: appColors.black.withOpacity(0.7),
                      fontWeight: FontWeight.bold,
                      fontSize: 18.0,
                    ),
                  ),
                  Image.asset(
                    'assets/icons/more.png',
                    color: appColors.green,
                    height: 20,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 130.0,
              child: ListView.builder(
                itemCount: homeCtrl.populerPlants.length,
                physics: const BouncingScrollPhysics(),
                padding: const EdgeInsets.only(left: 20.0),
                scrollDirection: Axis.horizontal,
                itemBuilder: (itemBuilder, index) {
                  return Container(
                    width: 200.0,
                    margin: const EdgeInsets.only(right: 20, bottom: 10),
                    decoration: BoxDecoration(
                      color: appColors.lightGreen,
                      boxShadow: [
                        BoxShadow(
                          color: appColors.green.withOpacity(0.1),
                          blurRadius: 10,
                          offset: const Offset(0, 5),
                        ),
                      ],
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: Stack(
                      children: [
                        Row(
                          children: [
                            Image.asset(
                              homeCtrl.populerPlants[index].imagePath,
                              width: 70,
                              height: 70,
                            ),
                            const SizedBox(width: 10.0),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  homeCtrl.populerPlants[index].name,
                                  style: TextStyle(
                                    color: appColors.black.withOpacity(0.7),
                                    fontWeight: FontWeight.w800,
                                  ),
                                ),
                                Text(
                                  '\$${homeCtrl.populerPlants[index].price.toStringAsFixed(0)}',
                                  style: TextStyle(
                                    color: appColors.black.withOpacity(0.4),
                                    fontWeight: FontWeight.w600,
                                    fontSize: 12.0,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                        Positioned(
                          right: 20,
                          bottom: 20,
                          child: CircleAvatar(
                            backgroundColor: appColors.green,
                            radius: 15,
                            child: Image.asset(
                              'assets/icons/add.png',
                              color: appColors.white,
                              height: 15,
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            )
      ],
    );

    });
    
  }
}