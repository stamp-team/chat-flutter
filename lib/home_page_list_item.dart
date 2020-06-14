import 'package:flutter/material.dart';

class HomePageListTile extends StatelessWidget {
  final String image;
  final String name;
  final bool isMe;
  HomePageListTile(
    this.image,
    this.name,
    this.isMe,
  );
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: () {},
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 10,
          vertical: isMe ? 30 : 10,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: isMe ? 60 : 50,
              width: isMe ? 60 : 50,
              child: CircleAvatar(
                radius: double.infinity,
                backgroundImage: NetworkImage(image),
              ),
            ),
            SizedBox(
              width: 20,
            ),
            Flexible(
              child: Text(
                name,
                style: TextStyle(
                  fontSize: isMe ? 30 : 20,
                  fontWeight: FontWeight.bold,
                ),
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ),
    );
  }
}