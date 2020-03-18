import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

const bottomContainerHeight = 70.0;
const activeCardCBg = Color(0xFF3c0000);
const bottomContainerColor = Color(0xffeb15555);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: CardContainer(
                    cardColor: activeCardCBg,
                    cardChild: GenderCardContent(
                      cardTitle: 'Male',
                      cardIcon: Icon(
                        FontAwesomeIcons.male,
                        size: 70.0,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: CardContainer(
                    cardColor: activeCardCBg,
                    cardChild: GenderCardContent(
                      cardTitle: 'Femile',
                      cardIcon: Icon(
                        FontAwesomeIcons.female,
                        size: 70.0,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: CardContainer(cardColor: activeCardCBg),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: CardContainer(
                      // cardColor: Color(0xFF1d1e33),
                      cardColor: activeCardCBg),
                ),
                Expanded(
                  child: CardContainer(
                      // cardColor: Color(0xFF1d1e33),
                      cardColor: activeCardCBg),
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

class GenderCardContent extends StatelessWidget {
  // const GenderCardContent({
  //   Key key,
  // }) : super(key: key);

  GenderCardContent({@required this.cardTitle, this.cardIcon});

  final String cardTitle;
  final Icon cardIcon;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        cardIcon,
        SizedBox(
          height: 15.0,
        ),
        Text(
          cardTitle,
          style: TextStyle(
            fontSize: 18.0,
          ),
        ),
      ],
    );
  }
}

class CardContainer extends StatelessWidget {
  // const CardContainer({
  //   Key key,
  // }) : super(key: key);

  CardContainer({@required this.cardColor, this.cardChild});

  final Color cardColor;
  final Widget cardChild;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
          color: cardColor, borderRadius: BorderRadius.circular(15.0)),
    );
  }
}
