import 'package:flutter/material.dart';

class HomeScreenProvider extends ChangeNotifier  {

    List optionList = [];
  List selectService = [];
  List transaction = [];
  List billDetails = [];
  List savingPlan = [];
  List newsUpdate = [];
  List otherOption = [];
  List addPayeeList = [];
  List messageList = [];
  List quickSend = [];
  List allCards = [];
  double sliderValue = 0;
  bool isNewsLayout = false;
  int? selectedNewsIndex;
  final ScrollController scrollController = ScrollController();
  dynamic selectCard;
  dynamic gender;
  dynamic from;
  dynamic fromLabel;
  dynamic payMode;
   List<String> list = <String>['IMPS', 'NEFT'];

   init() {
   }
  
}