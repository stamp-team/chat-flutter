import 'package:flutter/material.dart';
import 'talk_page_list_tile.dart';
import 'package:chat_flutter/model/room.dart';

class TalkPage extends StatefulWidget {
  @override
  _TalkPageState createState() => _TalkPageState();
}

class _TalkPageState extends State<TalkPage> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _getRoomList(),
      builder: (
        BuildContext context,
        AsyncSnapshot<List<Room>> snapshot,
      ) {
        if (snapshot.hasData) {
          if (snapshot.data.length != 0) {
            return ListView.builder(
                physics: ScrollPhysics(),
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemCount: snapshot.data.length,
                itemBuilder: (
                  BuildContext context,
                  int index,
                ) {
                  return TalkPageListTile(snapshot.data[index]);
                });
          } else {
            return Center(
              child: Text("トークルームがありません"),
            );
          }
        } else if (snapshot.connectionState != ConnectionState.done) {
          return Center(
            child: CircularProgressIndicator(),
          );
        } else {
          return Container();
        }
      },
    );
  }

  Future<List<Room>> _getRoomList() async {
    final List<Room> roomList = [
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

    await Future.delayed(Duration(seconds: 1));
    return await Future.value(roomList);
  }
}
