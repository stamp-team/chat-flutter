import 'package:flutter/material.dart';

class ProfileImage extends StatelessWidget {
  final String image;

  const ProfileImage({Key key, this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 150,
      padding: EdgeInsets.all(8),
      child: Container(
        padding: EdgeInsets.all(3),
        child: Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(image: AssetImage("assets/images/avatar.JPG")
                // NetworkImage(image),
                ),
          ),
        ),
      ),
    );
  }
}
