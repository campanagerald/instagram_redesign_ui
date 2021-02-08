import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:instagram_redesign_ui/models/category.dart';

class CategoriesPanel extends StatelessWidget {
  const CategoriesPanel({
    Key key,
    @required this.categories,
  }) : super(key: key);

  final List<Category> categories;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        itemCount: categories.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, index) {
          final category = categories[index];

          return Container(
            height: 90,
            width: 80,
            padding: EdgeInsets.symmetric(vertical: 5),
            margin: EdgeInsets.symmetric(horizontal: 8),
            decoration: BoxDecoration(
              color: category.color,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SvgPicture.asset(
                  category.icon,
                  height: 50,
                ),
                Text(category.name),
              ],
            ),
          );
        },
      ),
    );
  }
}
