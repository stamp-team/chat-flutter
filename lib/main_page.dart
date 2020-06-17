import 'package:chat_flutter/ui/molecules/profile_page_app_bar.dart';
import 'package:chat_flutter/ui/pages/profile_page.dart';
import 'package:flutter/material.dart';
import 'home_page.dart';
import 'talk_page.dart';
import 'home_page_app_bar.dart';
import 'talk_page_app_bar.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _currentIndex = 0;
  void changePage(int index) {
    setState(
      () => _currentIndex = index,
    );
  }

  @override
  Widget build(BuildContext context) {
    final List appBarList = [
      HomePageAppBar(),
      TalkPageAppBar(),
      ProfilePageAppBar(),
    ];

    final List<Color> backgroundColor = [
      Color(0xffEEEEEE),
      Colors.white,
      Colors.white,
    ];

    final List pages = [
      HomePage(),
      TalkPage(),
      ProfilePage(),
    ];

    return Scaffold(
      appBar: appBarList[_currentIndex],
      backgroundColor: backgroundColor[_currentIndex],
      bottomNavigationBar: bottomNavigation(),
      body: pages[_currentIndex],
    );
  }

  Widget bottomNavigation() {
    return BottomNavigationBar(
      backgroundColor: Colors.white,
      type: BottomNavigationBarType.fixed,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      currentIndex: _currentIndex,
      items: [
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home,
          ),
          title: Text(
            "",
          ),
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.message,
          ),
          title: Text(
            "",
          ),
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.person,
          ),
          title: Text(
            "",
          ),
        ),
      ],
      onTap: (index) => setState(
        () => _currentIndex = index,
      ),
    );
  }
}
