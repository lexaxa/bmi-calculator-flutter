import 'package:flutter/material.dart';
import 'InputPage.dart';
import 'constants.dart';

class CardWidget extends StatelessWidget {
  CardWidget({this.color, this.cardChild, this.onPress});

  final Color color;
  final Widget cardChild;
  final Function onPress;

  Color getMaleColor(Gender selectedGender) {
    return selectedGender == Gender.MALE
        ? kActiveCardColour
        : kInactiveCardColour;
  }

  Color getFemaleColor(Gender selectedGender) {
    return selectedGender == Gender.FEMALE
        ? kActiveCardColour
        : kInactiveCardColour;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}
