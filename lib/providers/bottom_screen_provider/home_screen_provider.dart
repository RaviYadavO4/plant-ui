import 'package:flutter/material.dart';
import 'package:plant_ui/config.dart';

class HomeScreenProvider extends ChangeNotifier  {

  PageController controller = PageController();


    List categories = [];
    List plants = [];
  

   dynamic selectedCategory = appArray.hs_categories[0]["id"];
   dynamic activePlantsPage = 0;

   onInit() {
    categories = appArray.hs_categories;
    plants = appArray.plants;
    controller = PageController(viewportFraction: 0.6, initialPage: 0);
   }
  
  selectCategoriesChange(value) {
    selectedCategory = value;
    notifyListeners();
  }

    activePlantsChange(value) {
    activePlantsPage = value;
    notifyListeners();
  }
}