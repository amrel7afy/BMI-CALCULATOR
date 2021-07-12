import 'dart:math';

import 'package:flutter/cupertino.dart';
class CalculationBrain{
  CalculationBrain({@required this.weight,@required this.height});
  final weight;
  final height;
 double _bmi;
  String calculateBMI(){
   _bmi=weight/pow(height/100, 2);
  return _bmi.toStringAsFixed(1);
  }
  String status(){
    if(_bmi>=25){
      return 'over weight';
    }else if(_bmi>18.5){
      return 'normal';
    }else{
      return 'under weight';
    }
  }
  String interpretation(){
    if(_bmi>=25){
      return 'You have a higher than normal body weight. Try do more exercise';
    }else if(_bmi>18.5){
      return 'you have a normal body weight. Good job!';
    }else{
      return 'you are under weight. Try to eat more!';
    }
  }
}
