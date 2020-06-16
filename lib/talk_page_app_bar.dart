import 'package:flutter/material.dart';

class TalkPageAppBar extends StatelessWidget with PreferredSizeWidget {
  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
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
          icon: Icon(
            Icons.more_vert,
          ),
          color: Color(0xff707070),
          onPressed: () {},
        ),
      ],
    );
  }
}
