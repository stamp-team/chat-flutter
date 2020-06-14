import 'package:flutter/material.dart';
import 'home_page_list_item.dart';

class HomePageTileGroup extends StatelessWidget {
  final String title;
  final List infoList;
  HomePageTileGroup(this.title, this.infoList);
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(
            left: 20,
          ),
          child: Text(
            title,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        for (var info in infoList)
          HomePageListTile(
            info[0],
            info[1],
            info[2],
          ),
      ],
    );
  }
}
