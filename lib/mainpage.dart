import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    final List appBar=[
      homeAppBar(context),
      talkAppBar(),
    ];
    return Scaffold(
      appBar: appBar[_currentIndex],
    );
  }

  Widget bottomNavigation() {
    return BottomNavigationBar(
      backgroundColor: Colors.white,
      type: BottomNavigationBarType.fixed,
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

Widget homeAppBar(BuildContext context) {
  return AppBar(
    title: const Text("Programmable"),
    actions: <Widget>[
      FlatButton(
        child: const Icon(
          Icons.add,
        ),
        shape: CircleBorder(),
        onPressed: null, //TODO友達追加画面
      ),
      FlatButton(
        child: const Icon(
          Icons.add,
        ),
        shape: CircleBorder(),
        onPressed: null, //TODOグループ作成
      ),
    ],
  );
}

Widget talkAppBar() {
  return AppBar(
    title: Text("Talk"),
    actions: <Widget>[
      FlatButton(
        child: Icon(
          Icons.more_vert,
        ),
        onPressed: null, //TODOトークの編集
      ),
    ],
  );
}