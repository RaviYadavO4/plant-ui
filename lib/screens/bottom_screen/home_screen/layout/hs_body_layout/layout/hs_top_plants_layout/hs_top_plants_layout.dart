import 'package:flutter/material.dart';
import 'package:plant_ui/config.dart';
import 'package:plant_ui/providers/bottom_screen_provider/home_screen_provider.dart';
import 'package:plant_ui/routes/index.dart';
import 'package:provider/provider.dart';

class HsTopPlantsLayout extends StatelessWidget {
  const HsTopPlantsLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<HomeScreenProvider>(builder: (context,homeCtrl,child){
      return SizedBox(
              height: 320.0,
              child: PageView.builder(
                itemCount: homeCtrl.plants.length,
                controller: homeCtrl.controller,
                physics: const BouncingScrollPhysics(),
                padEnds: false,
                pageSnapping: true,
                onPageChanged: (value) => homeCtrl.activePlantsChange(value),
                itemBuilder: (itemBuilder, index) {
                  bool active = index == homeCtrl.activePlantsPage;
                  return slider(active, index,context,homeCtrl);
                },
              ),
            );
    });
  }

  AnimatedContainer slider(active, index,context,HomeScreenProvider homeCtrl) {
    double margin = active ? 20 : 30;
    return AnimatedContainer(
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOutCubic,
      margin: EdgeInsets.all(margin),
      child: mainPlantsCard(index,context,homeCtrl),
    );
  }
  Widget mainPlantsCard(index,context,HomeScreenProvider homeCtrl) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, routeName.plantDetailsScreen,arguments:homeCtrl.plants[index] );
        
      },
      child: Container(
        padding: const EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          color: appColors.white,
          boxShadow: [
            BoxShadow(
              color: appColors.black.withOpacity(0.05),
              blurRadius: 15,
              offset: const Offset(5, 5),
            ),
          ],
          border: Border.all(color: appColors.green, width: 2),
          borderRadius: BorderRadius.circular(30.0),
        ),
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                color: appColors.lightGreen,
                boxShadow: [
                  BoxShadow(
                    color: appColors.black.withOpacity(0.05),
                    blurRadius: 15,
                    offset: const Offset(5, 5),
                  ),
                ],
                borderRadius: BorderRadius.circular(25.0),
                image: DecorationImage(
                  image: AssetImage(homeCtrl.plants[index].imagePath),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              right: 8,
              top: 8,
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
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 5),
                child: Text(
                  '${homeCtrl.plants[index].name} - \$${homeCtrl.plants[index].price.toStringAsFixed(0)}',
                  style: TextStyle(
                    color: appColors.black.withOpacity(0.7),
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}