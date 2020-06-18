import 'package:chat_flutter/providers/user.dart';
import 'package:chat_flutter/ui/atoms/profile_image.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../model/user.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final userProvider = Provider.of<UserProvider>(context);
    return FutureBuilder<User>(
      future: userProvider.getUserById("userId"),
      builder: (BuildContext context, AsyncSnapshot<User> snapshot) {
        if (snapshot.hasError) {
          return Text('Error: ${snapshot.error}');
        }
        switch (snapshot.connectionState) {
          case ConnectionState.waiting: // データの取得まち
            return Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CircularProgressIndicator(),
              ],
            );
          default:
            if (snapshot.hasData) {
              return _ProfilePage(
                user: snapshot.data,
              );
            } else {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Text("該当するユーザーがいません"),
              );
            }
        }
      },
    );
  }
}

class _ProfilePage extends StatelessWidget {
  final User user;

  const _ProfilePage({Key key, this.user}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: <Widget>[
          Padding(
            padding:
                const EdgeInsets.only(top: 10, right: 25, bottom: 25, left: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Spacer(),
                ProfileImage(image: user.imgUrl),
                SizedBox(height: 15),
                Text(
                  user.name,
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
                ),
                SizedBox(height: 35),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                        width: 150,
                        child: RaisedButton.icon(
                          icon: Icon(
                            Icons.edit,
                            color: Colors.white,
                          ),
                          label: Text("編集する"),
                          onPressed: () {
                            Navigator.pushNamed<void>(
                                context, "/profileEditPage");
                          },
                          color: Colors.green,
                          textColor: Colors.white,
                        )),
                  ],
                ),
                Spacer(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
