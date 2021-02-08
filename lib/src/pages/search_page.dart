import 'package:flutter/material.dart';

import 'package:instagram_redesign_ui/models/category.dart';
import 'package:instagram_redesign_ui/src/widgets/categories_panel.dart';
import 'package:instagram_redesign_ui/src/widgets/populars_gridview.dart';
import 'package:instagram_redesign_ui/src/widgets/search_field.dart';

class SearchPage extends StatelessWidget {
  final categories = [
    Category(
      name: 'IGTV',
      icon: 'assets/images/igtv.svg',
      color: Color(0xffFB984A),
    ),
    Category(
      name: 'Store',
      icon: 'assets/images/store.svg',
      color: Color(0xff515BD4),
    ),
    Category(
      name: 'Travel',
      icon: 'assets/images/travel.svg',
      color: Color(0xff8134AF),
    ),
    Category(
      name: 'Fitness',
      icon: 'assets/images/fitness.svg',
      color: Color(0xffDD2A7B),
    ),
    Category(
      name: 'Art',
      icon: 'assets/images/art.svg',
      color: Color(0xffFCAF4D),
    ),
  ];

  final populars = [
    'https://images.unsplash.com/photo-1612782972278-c1fc348380aa?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80',
    'https://images.unsplash.com/photo-1612782011824-679085e8304e?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80',
    'https://images.unsplash.com/photo-1612774336178-51f2c963c4cb?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80',
    'https://images.unsplash.com/photo-1612769254949-deb42c1fbbf7?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=700&q=80',
    'https://images.unsplash.com/photo-1612536242012-0b4fb1682715?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80',
    'https://images.unsplash.com/photo-1612625365859-0721ffb8f7e6?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80',
    'https://images.unsplash.com/photo-1593642532400-2682810df593?ixid=MXwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80',
    'https://images.unsplash.com/photo-1612734646838-774f06bb07ad?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80'
  ];

  SearchPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 10),
        CategoriesPanel(categories: categories),
        SizedBox(height: 10),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: SearchField(),
        ),
        SizedBox(height: 10),
        Expanded(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: PopularsGridView(populars: populars),
          ),
        )
      ],
    );
  }
}
