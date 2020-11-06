import 'package:flutter/material.dart';
import 'package:furniture_app/constants.dart';
import 'package:furniture_app/models/product.dart';
import 'package:furniture_app/screen/details/components/chat_and_add_to_cart.dart';
import 'package:furniture_app/screen/details/components/list_color_dots.dart';
import 'package:furniture_app/screen/details/components/product_image.dart';

class Body extends StatelessWidget {
  const Body({Key key, @required this.product}) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      bottom: false,
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: kDefaultPadding * 2,
              ),
              decoration: BoxDecoration(
                color: kBackgroundColor,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(kDefaultPadding * 2),
                  bottomRight: Radius.circular(kDefaultPadding * 2),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: ProductImage(size: size, product: product),
                  ),
                  SizedBox(
                    height: kDefaultPadding,
                  ),
                  ListColorDots(),
                  SizedBox(
                    height: kDefaultPadding * 3,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: kDefaultPadding / 2,
                    ),
                    child: Text(
                      product.title,
                      style: Theme.of(context).textTheme.headline6,
                    ),
                  ),
                  Text(
                    "\$${product.price}",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: kSecondaryColor,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: kDefaultPadding / 2,
                    ),
                    child: Text(
                      product.description,
                      style: TextStyle(color: kTextLightColor),
                    ),
                  ),
                  SizedBox(height: kDefaultPadding)
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(kDefaultPadding),
              padding: EdgeInsets.symmetric(
                horizontal: kDefaultPadding,
                vertical: kDefaultPadding / 2,
              ),
              decoration: BoxDecoration(
                color: kSecondaryColor,
                borderRadius: BorderRadius.circular(30),
              ),
              child: ChatAndAddToCart(),
            ),
          ],
        ),
      ),
    );
  }
}
