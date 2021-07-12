import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/components/reusable_card.dart';

class ResultPage extends StatelessWidget {
  ResultPage({@required this.bottomContainer,@required this.status,@required this.result,@required this.interpretation});
  final Widget bottomContainer;
  final String status;
  final String result;
  final String interpretation;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('BMI CALCULATOR'),),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              alignment: Alignment.bottomLeft,
              child: Text('Your Result',style: kYourResultStyle,),
            ),
          ),
          Expanded(
            flex: 5,
              child: ReusableCard(colour: kActiveColor,cardChild:
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(status.toUpperCase(),style:kStatusStyle,),
                    Text(result,style: TextStyle(fontSize: 100,fontWeight: FontWeight.bold),),
                    Text(interpretation,textAlign: TextAlign.center,style: TextStyle(
                      fontSize: 20.0
                    ),)
                  ],
                ),)),
          Expanded(child: GestureDetector(
            onTap: (){
              Navigator.pop(context);
            },
              child:bottomContainer))
        ],
      )
    );
  }
}
