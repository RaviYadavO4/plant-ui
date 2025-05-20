import 'package:flutter/material.dart';
import 'package:plant_ui/config.dart';
import 'package:plant_ui/screens/bottom_screen/home_screen/home_screen.dart';

class BottomScreenProvider extends ChangeNotifier {
  int currentTab = 0;
  List drawerList = [];
  List bottomNavigationBarList = [];
  GlobalKey<ScaffoldState> bottomNavScaffoldKey = GlobalKey<ScaffoldState>();

  //tab screens list
  final List<Widget> screens = [
    const HomeScreen(),
    Container(color: appColors.white),
    const HomeScreen(),
    const HomeScreen(),
    // const CryptoScreen(),
    // const InsightScreen(),
    // const ProfileScreen(),
  ];

  //drawer index on taps screen
  drawerOnTap(int key, context) {
    switch (key) {
      case 0:
        Navigator.pop(context);
        currentTab = 0;
        notifyListeners();
        break;
      case 1:
        Navigator.pop(context);
        currentTab = 2;
        notifyListeners();
        break;
      case 2:
        Navigator.pop(context);
        // Navigator.pushNamed(context, routeName.allCardScreen);
        break;
      case 3:
        Navigator.pop(context);
        // route.pushNamed(context, routeName.notificationScreen);
        break;
      case 4:
        Navigator.pop(context);
        currentTab = 3;
        notifyListeners();
        break;
      case 5:
        Navigator.pop(context);
        // Navigator.pushNamed(context, routeName.settingScreen);
        break;
      case 6:
        Navigator.pop(context);
        // route.pushNamed(context, routeName.noInternetScreen);
        break;
      case 7:
        Navigator.pop(context);
        // Navigator.pushReplacementNamed(context, routeName.signInScreen);
        break;
    }
  }

  // Initialize list
  onInit() {
    drawerList = appArray.drawerList;
    bottomNavigationBarList = appArray.bottomNavigationBarList;
    notifyListeners();
  }

  //navigation tab change
  tabChange(int index) {
    currentTab = index;
    notifyListeners();
  }

  //PayList onTap method
  onTap(context) {
    Navigator.pop(context);
    Navigator.pop(context);

    notifyListeners();
  } //PayList onTap method
}
