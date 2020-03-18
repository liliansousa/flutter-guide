import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:google_fonts/google_fonts.dart';

import './widgets/card_container.dart';
import './widgets/card_icon_content.dart';

const bottomContainerHeight = 70.0;
const activeCardBg = Color(0xFF3c0000);
const inactiveCardBg = Color(0xFF2d0000);
const bottomContainerColor = Color(0xffeb15555);

enum GenderType {
  Female,
  Male,
  Undefined,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  GenderType selectedGender = GenderType.Undefined;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
        backgroundColor: Color(0xFF1a0000),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedGender = GenderType.Male;
                      });
                    },
                    child: CardContainer(
                      cardColor: selectedGender == GenderType.Male
                          ? activeCardBg
                          : inactiveCardBg,
                      cardChild: GenderCardContent(
                        cardTitle: 'Male',
                        cardIcon: FontAwesomeIcons.male,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedGender = GenderType.Female;
                      });
                    },
                    child: CardContainer(
                      cardColor: selectedGender == GenderType.Female
                          ? activeCardBg
                          : inactiveCardBg,
                      cardChild: GenderCardContent(
                        cardTitle: 'Female',
                        cardIcon: FontAwesomeIcons.female,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: CardContainer(cardColor: activeCardBg),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: CardContainer(
                      // cardColor: Color(0xFF1d1e33),
                      cardColor: activeCardBg),
                ),
                Expanded(
                  child: CardContainer(
                      // cardColor: Color(0xFF1d1e33),
                      cardColor: activeCardBg),
                )
              ],
            ),
          ),
          Container(
            color: bottomContainerColor,
            margin: EdgeInsets.only(top: 10),
            height: bottomContainerHeight,
            width: double.infinity,
          )
        ],
      ),
    );
  }
}
