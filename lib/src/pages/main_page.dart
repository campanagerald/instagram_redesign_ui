import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:instagram_redesign_ui/src/pages/search_page.dart';

import '../widgets/custom_app_bar.dart';
import '../widgets/custom_bottom_app_bar.dart';
import 'home_page.dart';

class MainPage extends StatefulWidget {
  MainPage({Key key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  PageController _pageController;
  int _currentPageIndex = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: _currentPageIndex);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(),
        body: PageView(
          controller: _pageController,
          onPageChanged: (index) {
            setState(() {
              _currentPageIndex = index;
            });
          },
          children: [
            HomePage(),
            SearchPage(),
          ],
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          tooltip: 'Increment',
          child: ClipOval(
              child: SvgPicture.asset('assets/images/instagram-logo.svg')),
          elevation: 2.0,
        ),
        bottomNavigationBar: ClipRRect(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10), topRight: Radius.circular(10)),
          child: CustomButtomAppBar(
            currentSelectedPageIndex: _currentPageIndex,
          ),
        ),
      ),
    );
  }
}
