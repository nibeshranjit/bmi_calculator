import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_widget.dart';
import'reusable_widget.dart';

const bottomContainerHeight = 80.0;
const boxColor = Color(0xFF1D1E33);
const bottomColor = Color(0xFFD1555);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'BMI CALCULATOR ',
        ),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    colour: boxColor,
                    cardChild: IconsWidget(
                      icon: FontAwesomeIcons.mars,
                      label: 'MALE',
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    colour: boxColor,
                    cardChild: IconsWidget(
                      icon: FontAwesomeIcons.venus,
                      label:'FEMALE',
                    )
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              colour: boxColor,
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    colour: boxColor,
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    colour: boxColor,
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: bottomColor,
            margin: EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: bottomContainerHeight,
          ),
        ],
      ),
    );
  }
}


