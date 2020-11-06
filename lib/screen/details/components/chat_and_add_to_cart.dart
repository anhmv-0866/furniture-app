import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:furniture_app/constants.dart';

class ChatAndAddToCart extends StatelessWidget {
  const ChatAndAddToCart({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(
          "assets/icons/chat.svg",
          height: 18,
        ),
        SizedBox(width: kDefaultPadding / 2),
        Text(
          "Chat",
          style: TextStyle(color: Colors.white),
        ),
        Spacer(),
        FlatButton.icon(
          onPressed: () {},
          icon: SvgPicture.asset("assets/icons/shopping-bag.svg"),
          label: Text(
            "Add to cart",
            style: TextStyle(color: Colors.white),
          ),
        ),
      ],
    );
  }
}
