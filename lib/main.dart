import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'input_page.dart';
import 'constants.dart';



void main() {
  runApp(MaterialApp(
    home: InputPage(),
    theme: ThemeData.dark().copyWith(
      primaryColor: Color(0xff090C22),
      scaffoldBackgroundColor:  Color(0xff090C22)
    ),
  ));

}







