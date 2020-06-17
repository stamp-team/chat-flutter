import 'package:flutter/material.dart';

class AddFriendListTile extends StatelessWidget {
  final String name;
  final String imgUrl;
  AddFriendListTile({
    this.name,
    this.imgUrl,
  });
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: () {},
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 50,
              width: 50,
              child: CircleAvatar(
                radius: double.infinity,
                backgroundImage: NetworkImage(imgUrl),
              ),
            ),
            SizedBox(
              width: 20,
            ),
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
          ],
        ),
      ),
    );
  }
}
