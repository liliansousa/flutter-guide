import 'package:flutter/material.dart';

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
