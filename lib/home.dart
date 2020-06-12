import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        me(
          'https://dot.asahi.com/S2000/upload/2019100100055_1.jpg',
          'name',
        ),
        ConstrainedBox(
          constraints: BoxConstraints(
              minHeight: MediaQuery.of(context).size.height - 180),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
              color: Colors.white,
            ),
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 20,
                ),
                groups(),
                Divider(
                  endIndent: 50,
                ),
                friends(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

Widget me(
  String image,
  String name,
) {
  return FlatButton(
    onPressed: (){},
    child: Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 30,
      ),
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
          Flexible(
            child: Text(
              name,
              style: TextStyle(
                fontSize: 30,
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

Widget groups() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Padding(
        padding: const EdgeInsets.only(left: 20.0),
        child: Text(
          "group",
          style: TextStyle(fontSize: 18),
        ),
      ),
      SizedBox(
        height: 10,
      ),
      item(
        "https://prtimes.jp/i/24101/70/resize/d24101-70-320114-0.jpg",
        "Sport",
        "",
      ),
      item(
        "https://prtimes.jp/i/24101/70/resize/d24101-70-320114-0.jpg",
        "Study",
        "",
      ),
      item(
        "https://prtimes.jp/i/24101/70/resize/d24101-70-320114-0.jpg",
        "Hobby",
        "",
      ),
    ],
  );
}

Widget friends() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Padding(
        padding: const EdgeInsets.only(left: 20),
        child: Text(
          "friends",
          style: TextStyle(fontSize: 18),
        ),
      ),
      SizedBox(
        height: 10,
      ),
      item(
        "https://pbs.twimg.com/profile_images/581025665727655936/9CnwZZ6j.jpg",
        "Alex",
        "",
      ),
      item(
        "https://pbs.twimg.com/profile_images/581025665727655936/9CnwZZ6j.jpg",
        "Brian",
        "",
      ),
      item(
        "https://pbs.twimg.com/profile_images/581025665727655936/9CnwZZ6j.jpg",
        "Jack",
        "",
      ),
    ],
  );
}

Widget item(
  String image,
  String name,
  destination,
) {
  return FlatButton(
    onPressed: (){},
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
