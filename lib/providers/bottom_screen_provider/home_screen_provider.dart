import 'package:flutter/material.dart';
import 'package:plant_ui/config.dart';

class HomeScreenProvider extends ChangeNotifier  {

    List categories = [];
    List plants = [];
  

   dynamic selectedCategory = appArray.hs_categories[0]["id"];

   onInit() {
    categories = appArray.hs_categories;
    plants = appArray.plants;
   }
  
  selectCategoriesChange(value) {
    selectedCategory = value;
    notifyListeners();
  }
}