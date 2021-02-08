import 'package:flutter/material.dart';

class CustomButtomAppBar extends StatelessWidget {
  const CustomButtomAppBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                  icon: Icon(
                    Icons.home_outlined,
                    color: Colors.black,
                  ),
                  onPressed: () {},
                ),
                Container(
                  margin: EdgeInsets.only(right: 35),
                  child: IconButton(
                    icon: Icon(
                      Icons.search,
                      color: Colors.black,
                    ),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 35),
                  child: IconButton(
                      icon: Icon(
                        Icons.favorite_outline,
                        color: Colors.black,
                      ),
                      onPressed: () {}),
                ),
                IconButton(
                  icon: Icon(
                    Icons.person_outlined,
                    color: Colors.black,
                  ),
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
