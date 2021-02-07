import 'package:flutter/material.dart';
import 'package:instagram_redesign_ui/src/constants.dart';

class SearchField extends StatelessWidget {
  const SearchField({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        prefixIcon: Icon(
          Icons.search,
          color: Colors.grey,
        ),
        contentPadding: EdgeInsets.zero,
        border: kSearchFieldBorder,
        focusedBorder: kSearchFieldBorder,
      ),
      cursorColor: Colors.grey,
    );
  }
}
