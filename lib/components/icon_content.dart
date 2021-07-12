import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';
class IconContent extends StatelessWidget {
  IconContent({@required this.label,@required this.icon});
  final String label;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon,size: 70,),
        SizedBox(height: 10,),
        Text(label,style:kLabelStyle ,),
      ],
    );
  }
}
