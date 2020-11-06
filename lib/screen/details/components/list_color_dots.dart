import 'package:flutter/material.dart';
import 'package:furniture_app/screen/details/components/color_dot.dart';

class ListColorDots extends StatelessWidget {
  const ListColorDots({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ColorDot(
          fillColor: Colors.pink[300],
          isSelected: true,
        ),
        ColorDot(
          fillColor: Colors.blue,
          isSelected: true,
        ),
        ColorDot(
          fillColor: Colors.green,
          isSelected: true,
        )
      ],
    );
  }
}
