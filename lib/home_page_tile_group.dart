import 'package:flutter/material.dart';
import 'home_page_list_tile.dart';

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
        //TODO:リストを回してHomePageListTileを作る
        for(var model in infoList)HomePageListTile(model),
      ],
    );
  }
}
