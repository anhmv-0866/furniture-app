import 'package:flutter/material.dart';
import 'package:furniture_app/constants.dart';

class ColorDot extends StatelessWidget {
  const ColorDot({Key key, @required this.fillColor, @required this.isSelected})
      : super(key: key);

  final Color fillColor;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: kDefaultPadding / 2.5),
      width: 24,
      height: 24,
      padding: EdgeInsets.all(3),
      decoration: BoxDecoration(
        border: Border.all(
          color: isSelected ? fillColor : Colors.transparent,
        ),
        shape: BoxShape.circle,
      ),
      child: Container(
        decoration: BoxDecoration(
          color: fillColor,
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
