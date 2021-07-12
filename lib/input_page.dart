import 'package:flutter/material.dart';
import 'reusable_card.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'constants.dart';
import 'icon_content.dart';

enum Gender { male, female }

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender = Gender.male;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedGender = Gender.male;
                      });
                    },
                    child: ReusableCard(
                      cardChild: IconContent(
                        label: 'MALE',
                        icon: FontAwesomeIcons.mars,
                      ),
                      colour: selectedGender == Gender.male
                          ? kActiveColor
                          : kInactiveColor,
                    ),
                  ),
                ),
                Expanded(
                    child: GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedGender = Gender.female;
                    });
                  },
                  child: ReusableCard(
                    cardChild: IconContent(
                      label: 'FEMALE',
                      icon: FontAwesomeIcons.venus,
                    ),
                    colour: selectedGender == Gender.female
                        ? kActiveColor
                        : kInactiveColor,
                  ),
                )),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(colour: kActiveColor, cardChild: Column(
              children: [
                Text('HEIGHT',style: kLabelStyle,)
              ],
            )),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                      colour: Colors.white, cardChild: Column(
                    children: [
                      Text('HEIGHT',style: kLabelStyle,)
                    ],
                  )),
                ),
                Expanded(
                    child: ReusableCard(
                        colour: Colors.white, cardChild: Container()))
              ],
            ),
          ),
          Container(
            color: Color(0xffEB1555),
            width: double.infinity,
            height: 80,
          )
        ],
      ),
    );
  }
}
