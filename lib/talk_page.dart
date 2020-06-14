import 'package:flutter/material.dart';
import 'talk_page_list_tile.dart';
import 'package:chat_flutter/model/room.dart';

class TalkPage extends StatefulWidget {
  @override
  _TalkPageState createState() => _TalkPageState();
}

class _TalkPageState extends State<TalkPage> {
  List roomList =[
    Room(
      name: "Sport",
      imgUrl: "https://prtimes.jp/i/24101/70/resize/d24101-70-320114-0.jpg",
      lastMessage: "hello,group!",
      sendTime: "23:04",
    ),
    Room(
      name: "Study",
      imgUrl: "https://prtimes.jp/i/24101/70/resize/d24101-70-320114-0.jpg",
      lastMessage: "hey!",
      sendTime: "21:04",
    ),
    Room(
      name: "Hobby",
      imgUrl: "https://prtimes.jp/i/24101/70/resize/d24101-70-320114-0.jpg",
      lastMessage: "amusement Park!!!!",
      sendTime: "20:04",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        //TODO:リストを回してTalkPageListTileを作る
        for(var room in roomList)TalkPageListTile(room),
      ],
    );
  }
}