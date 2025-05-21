import 'package:flutter/material.dart';
import 'package:plant_ui/config.dart';

class HomeScreenProvider extends ChangeNotifier  {

    List categories = [];
  

   dynamic selectedCategory = appArray.hs_categories[0]["id"];

   onInit() {
    categories = appArray.hs_categories;
   }
  
  selectCategoriesChange(value) {
    selectedCategory = value;
    notifyListeners();
  }
}