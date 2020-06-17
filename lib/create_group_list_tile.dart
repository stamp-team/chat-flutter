import 'package:flutter/material.dart';

class CreateGroupListTile extends StatefulWidget {
  final String name;
  final String imgUrl;
  CreateGroupListTile({
    this.name,
    this.imgUrl,
  });
  @override
  _CreateGroupListTileState createState() => _CreateGroupListTileState();
}

class _CreateGroupListTileState extends State<CreateGroupListTile> {
  bool _isSelect = false;
  void select() {
    setState(() {
      _isSelect = !_isSelect;
    });
  }

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: () {
        select();
      },
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 50,
              width: 50,
              child: CircleAvatar(
                radius: double.infinity,
                backgroundImage: NetworkImage(widget.imgUrl),
              ),
            ),
            SizedBox(
              width: 20,
            ),
            Expanded(
              child: Text(
                widget.name,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Icon(
              _isSelect?Icons.check_box:Icons.check_box_outline_blank,
              color: _isSelect?Colors.blue:null,
            ),
          ],
        ),
      ),
    );
  }
}
