import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class RoomPage extends StatefulWidget {
  final String name;
  RoomPage(this.name);
  //本来はfirebase上のIDを渡して、ルーム名を取得したい。
  @override
  _RoomPageState createState() => _RoomPageState(this.name);
}

class _RoomPageState extends State<RoomPage> {
  final String name;
  _RoomPageState(this.name);
  @override
  Widget build(BuildContext context) {
    final TextEditingController _controller = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(
          color: Color(0xff707070),
        ),
        title: Text(
          name,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            color: Color(0xff707070),
          ),
        ),
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.more_vert),
          ),
        ],
      ),
      body: Column(
        children: <Widget>[
          MessageList(),
          SizedBox(
            height: 5,
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              SizedBox(
                width: 5,
              ),
              Expanded(
                child: TextField(
                  controller: _controller,
                  keyboardType: TextInputType.multiline,
                  minLines: 1,
                  maxLines: 4,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide(),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: 15,
                      vertical: 10,
                    ),
                  ),
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
              SizedBox(
                width: 5,
              ),
              IconButton(
                onPressed: () {
                  _controller.clear();
                },
                icon: Icon(Icons.send),
              ),
            ],
          ),
          SizedBox(
            height: 5,
          ),
        ],
      ),
    );
  }
}

class MessageList extends StatefulWidget {
  @override
  _MessageListState createState() => _MessageListState();
}

class _MessageListState extends State<MessageList> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        children: <Widget>[
          messageItem(true, context, "Hi", "6:34", true),
          messageItem(false, context, "Test message Maybe OK.", '6:35', true),
          messageItem(true, context, "Geneus", "12:24", false),
        ],
      ),
    );
  }
}

Widget messageItem(
  bool isMe, //IDとの一致で判定する予定
  BuildContext context,
  String message,
  String time,
  bool isRead,
) {
  return Padding(
    padding: const EdgeInsets.all(5.0),
    child: Row(
      mainAxisAlignment: isMe ? MainAxisAlignment.end : MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: <Widget>[
        if (isMe)
          Column(
            children: <Widget>[
              Text(
                (isRead) ? "既読" : "",
                style: TextStyle(fontSize: 10),
              ),
              Text(
                time,
                style: TextStyle(fontSize: 10),
              ),
            ],
          ),
        Container(
          constraints: BoxConstraints(
            maxWidth: MediaQuery.of(context).size.width / 2,
          ),
          margin: const EdgeInsets.symmetric(
            horizontal: 5,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: isMe?Colors.blue:Color(0xffEEEEEE),
          ),
          padding: const EdgeInsets.all(10),
          child: Text(
            message,
            softWrap: true,
            style: TextStyle(
              fontSize: 20,
              color: isMe?Colors.white:Colors.black,
            ),
          ),
        ),
        if (!isMe)
          Text(
            time,
            style: TextStyle(
              fontSize: 10,
            ),
          ),
      ],
    ),
  );
}