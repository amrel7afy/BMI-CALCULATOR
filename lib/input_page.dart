import 'package:flutter/cupertino.dart';
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
  int height = 180;
  int weight =70;
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
            child: ReusableCard(
                colour: kActiveColor,
                cardChild: Column(
                  children: [
                    Text(
                      'HEIGHT',
                      style: kLabelStyle,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(
                          height.toString(),
                          style: kNumberStyle,
                        ),
                        Text(
                          'cm',
                          style: kLabelStyle,
                        )
                      ],
                    ),
                    SliderTheme(
                      data: SliderThemeData().copyWith(
                          activeTrackColor: Colors.white,
                          inactiveTrackColor: kInactiveColor,
                          thumbColor: kBottomContainerColor,
                          overlayColor: Color(0x29EB1555),
                          trackHeight: 1),
                      child: Slider(
                        min: 120,
                        max: 220,
                        onChanged: (double value) {
                          setState(() {
                            height = value.round();
                          });
                        },
                        value: height.toDouble(),
                      ),
                    )
                  ],
                )),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                      colour: kActiveColor,
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'WEIGHT',
                            style: kLabelStyle,
                          ),
                          Text(weight.toString(),style: kNumberStyle,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              RoundBotton(icon: FontAwesomeIcons.minus,
                                onpress: (){
                                  setState(() {
                                    weight--;
                                  });
                                },
                              ),
                              SizedBox(width: 10,),
                              RoundBotton(icon: FontAwesomeIcons.plus,
                                  onpress: (){
                                    setState(() {
                                      weight++;
                                    });
                                  })
                            ],
                          )
                        ],
                      )),
                ),
                Expanded(
                    child: ReusableCard(
                        colour: kActiveColor, cardChild: Container()))
              ],
            ),
          ),
          Container(
            color: kBottomContainerColor,
            width: double.infinity,
            height: 80,
          )
        ],
      ),
    );
  }
}

class RoundBotton extends StatelessWidget {
RoundBotton({required this.onpress,required this.icon});
final Function onpress;
final IconData icon;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon),
      constraints: BoxConstraints.tightFor(width: 56.0,height: 56.0),
      fillColor:  Color(0xff212747),
      elevation: 5,
      shape: CircleBorder(),
        onPressed: (){onpress();});
  }
}
