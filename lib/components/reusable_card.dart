import 'package:flutter/material.dart';
import 'package:bmi_calculator/components/icon_content.dart';

class ReusableCard extends StatelessWidget  {
  ReusableCard({@required this.cardChild,@required this.colour});
  final Widget cardChild;
  final Color colour;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(10)
      ),

    );
  }
}