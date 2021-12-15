import 'package:flutter/material.dart';

class CardPositionProvider with ChangeNotifier{
  double opacity = 0;
  //left card Positions
  double startLeft = 65;
  //middle card position
  //right card position
  double endRight = 65;
  bool canShowNewCard = false;
  bool canOpenMysteryCard = false;

  void showNewCard(double leftPos, double rightPos, double opaqVal){
    startLeft = leftPos;
    endRight = rightPos;
    opacity = opaqVal;
    notifyListeners();
  }

  void showCard(bool val){
    canShowNewCard = val;
    notifyListeners();
  }

  void openNewCard(bool val){
    canOpenMysteryCard = val;
    notifyListeners();
  }

}