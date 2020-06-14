import 'package:flutter/material.dart';

class HomePageListTile extends StatelessWidget {
  //HomePageListTileが受け取る型がUserとGroupの二つあるのでmodelとしている
  final model;
  HomePageListTile(
    this.model,
  );
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: () {},
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 10,
          vertical: model.isMe ? 30 : 10,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: model.isMe ? 60 : 50,
              width: model.isMe ? 60 : 50,
              child: CircleAvatar(
                radius: double.infinity,
                backgroundImage: NetworkImage(model.imgUrl),
              ),
            ),
            SizedBox(
              width: 20,
            ),
            Flexible(
              child: Text(
                model.name,
                style: TextStyle(
                  fontSize: model.isMe ? 30 : 20,
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