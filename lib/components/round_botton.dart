import 'package:flutter/material.dart';
import '../constants.dart';

class RoundBotton extends StatelessWidget {
  RoundBotton({@required this.onpress, @required this.icon});
  final Function onpress;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
        child: Icon(icon),
        constraints: BoxConstraints.tightFor(width: 56.0, height: 56.0),
        fillColor: Color(0xff212747),
        elevation: 5,
        shape: CircleBorder(),
        onPressed: () {
          onpress();
        });
  }
}