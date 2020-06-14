import 'package:flutter/material.dart';
import 'message_list_item.dart';
import 'package:chat_flutter/model/message.dart';

class MessageList extends StatefulWidget {
  @override
  _MessageListState createState() => _MessageListState();
}

class _MessageListState extends State<MessageList> {
  List<Message> messageList;
  void initState() {
    super.initState();
    messageList = [
      Message(
        message: "amusement park!!!",
        sendTime: "23:00",
        isMe: true,
        isRead: true,
      ),
      Message(
        message: "make it possible with canon",
        sendTime: "23:03",
        isMe: false,
        isRead: true,
      ),
      Message(
        message: "あなたと、コンビに、ファミリーマート",
        sendTime: "23:07",
        isMe: true,
        isRead: false,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        children: <Widget>[
          //TODO:messageListを回してMessageListItemを作る
          for(var message in messageList)MessageListItem(message),
        ],
      ),
    );
  }
}
