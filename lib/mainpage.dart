import 'package:flutter/material.dart';
import 'home.dart';
import 'talk.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _currentIndex = 0;
  void changepage(int index) {
    setState(
      () => _currentIndex = index,
    );
  }

  @override
  Widget build(BuildContext context) {
    final List appBarList = [
      homeAppBar(),
      talkAppBat(),
    ];

    final List<Color> backgroundColor = [
      Color(0xffEEEEEE),
      Colors.white,
    ];

    final List pages = [
      HomePage(),
      TalkPage(),
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
          icon: Icon(Icons.home),
          title: Text(""),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.message),
          title: Text(""),
        ),
      ],
      onTap: (index) => setState(
        () => _currentIndex = index,
      ),
    );
  }
}

Widget homeAppBar() {
  return AppBar(
    elevation: 1.0,
    backgroundColor: Color(0xffEEEEEE),
    title: Text(
      "Chat",
      style: TextStyle(
        color: Color(0xff707070),
        fontWeight: FontWeight.bold,
      ),
    ),
    actions: <Widget>[
      IconButton(
        icon: Icon(
          Icons.add_circle_outline,
        ),
        color: Color(0xff707070),
        onPressed: () {},
      ),
      IconButton(
        icon: Icon(
          Icons.add_circle_outline,
        ),
        color: Color(0xff707070),
        onPressed: () {},
      ),
    ],
  );
}

Widget talkAppBat() {
  return AppBar(
    elevation: 1.0,
    backgroundColor: Colors.white,
    title: Text(
      "Talk",
      style: TextStyle(
        color: Color(0xff707070),
        fontWeight: FontWeight.bold,
      ),
    ),
    actions: <Widget>[
      IconButton(
        icon: Icon(Icons.more_vert),
        color: Color(0xff707070),
        onPressed: () {},
      ),
    ],
  );
}
