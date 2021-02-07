import 'package:flutter/material.dart';

import '../constants.dart';
import 'search_field.dart';

class ExploreSearchBar extends StatelessWidget {
  const ExploreSearchBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Row(
        children: [
          Text(
            'Explore',
            style: TextStyle(
              fontSize: 38,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(width: 50),
          Expanded(child: SearchField()),
        ],
      ),
    );
  }
}
