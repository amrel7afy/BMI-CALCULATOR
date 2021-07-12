import 'package:flutter/material.dart';
import '../constants.dart';
class BottomBotton extends StatelessWidget {
  BottomBotton({required this.label,});
  final String label;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Text(
        label,
        style: kBottomContainerStyle,
      ),
      color: kBottomContainerColor,
      width: double.infinity,
      height: 80,
    );
  }
}