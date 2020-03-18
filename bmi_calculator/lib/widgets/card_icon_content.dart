import 'package:flutter/material.dart';

class GenderCardContent extends StatelessWidget {
  // const GenderCardContent({
  //   Key key,
  // }) : super(key: key);

  GenderCardContent({@required this.cardTitle, this.cardIcon});

  final String cardTitle;
  final IconData cardIcon;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          cardIcon,
          size: 70.0,
        ),
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
