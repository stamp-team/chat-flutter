import 'package:flutter/material.dart';
import 'room_page.dart';

class TalkPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        room(
          context,
          "Sportssssssssssssssssssss",
          "https://prtimes.jp/i/24101/70/resize/d24101-70-320114-0.jpg",
          "hello,group!",
          '23:04',
          "",
        ),
        room(
          context,
          "Study",
          "https://prtimes.jp/i/24101/70/resize/d24101-70-320114-0.jpg",
          "math is perfect subject",
          '6:09',
          "",
        ),
        room(
          context,
          "Hobby",
          "https://prtimes.jp/i/24101/70/resize/d24101-70-320114-0.jpg",
          "my hobby is kyopro!!!",
          '6/12',
          "",
        ),
        room(
          context,
          "Alex",
          "https://pbs.twimg.com/profile_images/581025665727655936/9CnwZZ6j.jpg",
          "Hi Alex!",
          '5/25',
          "",
        ),
      ],
    );
  }
}

Widget room(
  BuildContext context,
  String name,
  String image,
  String lastMessage,
  String time,
  destination,
) {
  return FlatButton(
    onPressed: () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => RoomPage(name),
        ),
      );
    },
    child: SizedBox(
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 60,
              width: 60,
              child: CircleAvatar(
                radius: double.infinity,
                backgroundImage: NetworkImage(image),
              ),
            ),
            SizedBox(
              width: 20,
            ),
            SizedBox(
              height: 60,
              width: MediaQuery.of(context).size.width - 135,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Flexible(
                        child: Text(
                          name,
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      Text(
                        time,
                        style: TextStyle(
                          fontSize: 10,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                  Flexible(
                    child: Text(
                      lastMessage,
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.grey,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
