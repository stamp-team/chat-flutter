import 'package:flutter/material.dart';
import 'home_page_list_item.dart';
import 'home_page_tile_group.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List myGroups;
  List myFriends;
  void initState() {
    super.initState();
    myGroups = [
      [
        "https://prtimes.jp/i/24101/70/resize/d24101-70-320114-0.jpg",
        "Sport",
        false,
      ],
      [
        "https://prtimes.jp/i/24101/70/resize/d24101-70-320114-0.jpg",
        "Study",
        false,
      ],
      [
        "https://prtimes.jp/i/24101/70/resize/d24101-70-320114-0.jpg",
        "Hobby",
        false,
      ],
    ];
    myFriends=[
      [
        "https://pbs.twimg.com/profile_images/581025665727655936/9CnwZZ6j.jpg",
        "Alex",
        false,
      ],
      [
        "https://pbs.twimg.com/profile_images/581025665727655936/9CnwZZ6j.jpg",
        "Brian",
        false,
      ],
      [
        "https://pbs.twimg.com/profile_images/581025665727655936/9CnwZZ6j.jpg",
        "Jack",
        false,
      ],
    ];
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        HomePageListTile(
          'https://dot.asahi.com/S2000/upload/2019100100055_1.jpg',
          'name',
          true,
        ),
        Container(
          constraints: BoxConstraints(
            minHeight: MediaQuery.of(context).size.height - 180,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
            color: Colors.white,
          ),
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 20,
              ),
              HomePageTileGroup('group', myGroups),
              Divider(
                endIndent: 50,
              ),
              HomePageTileGroup('friend', myFriends),
            ],
          ),
        ),
      ],
    );
  }
}