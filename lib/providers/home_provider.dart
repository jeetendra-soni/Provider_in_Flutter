import 'package:flutter/material.dart';



class HomePageProvider with  ChangeNotifier{

  bool? isEligible;

  String EligibilityMessage = "";

  void CheckEligible(int age){
    if(age>=18){
      isEligible =  true;
      EligibilityMessage = "You are Eligible!";
      notifyListeners();
    }else{
      isEligible =  false;
      EligibilityMessage = "You are not Eligible!";
      notifyListeners();
    }
  }

}



