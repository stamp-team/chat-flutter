import 'package:flutter/material.dart';
import 'home_page_list_tile.dart';
import 'home_page_tile_group.dart';
import 'package:chat_flutter/model/user.dart';
import 'package:chat_flutter/model/group.dart';

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
      Group(
        name: "Sport",
        imgUrl: "https://prtimes.jp/i/24101/70/resize/d24101-70-320114-0.jpg",
      ),
      Group(
        name: "Study",
        imgUrl: "https://prtimes.jp/i/24101/70/resize/d24101-70-320114-0.jpg",
      ),
      Group(
        name: "Hobby",
        imgUrl: "https://prtimes.jp/i/24101/70/resize/d24101-70-320114-0.jpg",
      ),
    ];
    myFriends = [
      User(
        name: "Alex",
        imgUrl:
            "https://pbs.twimg.com/profile_images/581025665727655936/9CnwZZ6j.jpg",
        isMe: false,
      ),
      User(
        name: "Jack",
        imgUrl:
            "https://pbs.twimg.com/profile_images/581025665727655936/9CnwZZ6j.jpg",
        isMe: false,
      ),
      User(
        name: "Brian",
        imgUrl:
            "https://pbs.twimg.com/profile_images/581025665727655936/9CnwZZ6j.jpg",
        isMe: false,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        HomePageListTile(
          User(
            name: 'name',
            imgUrl: 'https://dot.asahi.com/S2000/upload/2019100100055_1.jpg',
            isMe: true,
          ),
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
