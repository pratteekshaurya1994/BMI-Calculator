import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  ReusableCard({@required this.colorProperty, this.cardChild, this.onPress});
  final Color colorProperty;
  final Widget cardChild;

  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: colorProperty,
          borderRadius: BorderRadius.circular(5),
        ),
      ),
    );
  }
}
