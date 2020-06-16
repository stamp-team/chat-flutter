import 'package:chat_flutter/model/message.dart';
import 'package:flutter/material.dart';

class MessageListItem extends StatelessWidget {
  final Message message;
  MessageListItem(this.message);
  @override
  Widget build(BuildContext context) {
    //isMeは頻繁に使うし変化しないから、ここで定義するのは？
    //あとmessage.messageに少し違和感 => message.textとか？
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Row(
        mainAxisAlignment:
            message.isMe ? MainAxisAlignment.end : MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          if (message.isMe)
            Column(
              children: <Widget>[
                Text(
                  (message.isRead) ? "既読" : "",
                  style: TextStyle(fontSize: 10),
                ),
                Text(
                  message.sendTime,
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
              color: message.isMe ? Colors.blue : Color(0xffEEEEEE),
            ),
            padding: const EdgeInsets.all(10),
            child: Text(
              message.message,
              softWrap: true,
              style: TextStyle(
                fontSize: 20,
                color: message.isMe ? Colors.white : Colors.black,
              ),
            ),
          ),
          if (!message.isMe)
            Text(
              message.sendTime,
              style: TextStyle(
                fontSize: 10,
              ),
            ),
        ],
      ),
    );
  }
}
