import 'package:flutter/material.dart';
import 'package:chat_flutter/model/user.dart';
import 'create_group_list_tile.dart';

class CreateGroupPage extends StatelessWidget {
  final TextEditingController _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        title: Text(
          "Group",
          style: TextStyle(
            color: Color(0xff707070),
          ),
        ),
        iconTheme: IconThemeData(
          color: Colors.blue,
        ),
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.check,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 20,
              ),
              FlatButton(
                onPressed: () {},
                child: SizedBox(
                  height: 100,
                  width: 100,
                  child: CircleAvatar(
                    radius: double.infinity,
                    backgroundImage: NetworkImage(
                        "https://wired.jp/app/uploads/2019/10/dog-unsolicited.jpg"),
                  ),
                ),
              ),
              SizedBox(
                width: 250,
                child: TextField(
                  controller: _textEditingController,
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Text(
                    "members",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              FutureBuilder(
                future: _getMemberList(),
                builder:
                    (BuildContext context, AsyncSnapshot<List<User>> snapshot) {
                  if (snapshot.hasData) {
                    if (snapshot.data.length != 0) {
                      return Container(
                        height:280,//4人分
                        child: ListView.builder(
                          physics: ScrollPhysics(),
                          scrollDirection: Axis.vertical,
                          shrinkWrap: true,
                          itemCount: snapshot.data.length,
                          itemBuilder: (BuildContext context, int index) {
                            return CreateGroupListTile(
                              name: snapshot.data[index].name,
                              imgUrl: snapshot.data[index].imgUrl,
                            );
                          },
                        ),
                      );
                    }else{
                      return Container();
                    }
                  }else if(snapshot.connectionState!=ConnectionState.done){
                    return Center(
                      child: CircularProgressIndicator(),
                    );
                  }else{
                    return Container();
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<List<User>> _getMemberList() async {
    final List<User> memberList = [
      User(
        name: "Alex",
        imgUrl:
            "https://pbs.twimg.com/profile_images/581025665727655936/9CnwZZ6j.jpg",
        isMe: false,
      ),
      User(
        name: "Alex2",
        imgUrl:
            "https://pbs.twimg.com/profile_images/581025665727655936/9CnwZZ6j.jpg",
        isMe: false,
      ),
      User(
        name: "Jack",
        imgUrl:
            "https://pbs.twimg.com/profile_images/581025665727655936/9CnwZZ6j.jpg",
        isMe: false,
      ),
      User(
        name: "Brian",
        imgUrl:
            "https://pbs.twimg.com/profile_images/581025665727655936/9CnwZZ6j.jpg",
        isMe: false,
      ),
      User(
        name: "Dog",
        imgUrl:
            "https://pbs.twimg.com/profile_images/581025665727655936/9CnwZZ6j.jpg",
        isMe: false,
      ),
      User(
        name: "Cat",
        imgUrl:
            "https://pbs.twimg.com/profile_images/581025665727655936/9CnwZZ6j.jpg",
        isMe: false,
      ),
    ];
    await Future.delayed(Duration(seconds: 3));
    return await Future.value(memberList);
  }
}
