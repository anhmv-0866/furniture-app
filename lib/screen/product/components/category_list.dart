import 'package:flutter/material.dart';
import 'package:furniture_app/constants.dart';

class CategoryList extends StatefulWidget {
  const CategoryList({
    Key key,
  }) : super(key: key);

  @override
  _CategoryListState createState() => _CategoryListState();
}

class _CategoryListState extends State<CategoryList> {
  // by default first item will be selected
  int selectedIndex = 0;
  List categories = ['All', 'Sofa', 'Park bench', 'Armchair'];
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
      height: 30,
      child: ListView.builder(
        itemCount: categories.length,
        itemBuilder: (context, index) => Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.4),
            borderRadius: BorderRadius.circular(6),
          ),
          margin: EdgeInsets.only(left: kDefaultPadding),
          padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
          child: Text(
            categories[index],
            style: TextStyle(color: Colors.yellow),
          ),
        ),
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
