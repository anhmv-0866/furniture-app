import 'package:flutter/material.dart';
import 'package:furniture_app/constants.dart';
import 'package:furniture_app/models/product.dart';

class ProductImage extends StatelessWidget {
  const ProductImage({
    Key key,
    @required this.size,
    @required this.product,
  }) : super(key: key);

  final Size size;
  final Product product;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: kDefaultPadding),
      height: size.width * 0.8,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            width: size.width * 0.7,
            height: size.width * 0.7,
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
            ),
          ),
          Hero(
            tag: product.id,
            child: Image.asset(
              product.image,
              width: size.width * 0.75,
              height: size.width * 0.75,
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}
