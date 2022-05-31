import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_dribbble_ui/meet-app/meet-app.dart';

import '../../gen/assets.gen.dart';

class ChatListItem extends StatelessWidget {
  final ChatList chatList;

  const ChatListItem({
    Key? key,
    required this.chatList,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 30),
      child: Row(children: [
        Stack(
          children: [
            CircleAvatar(
              backgroundImage: Assets.meetApp.images.avatar,
              radius: 25,
            ),
            if (chatList.status != UserStatus.offline)
              Positioned(
                bottom: 2,
                right: 0,
                child: Container(
                  width: 12,
                  height: 12,
                  decoration: BoxDecoration(
                    color: chatList.status == UserStatus.online
                        ? Colors.green.shade400
                        : Colors.orange.shade300,
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.white),
                  ),
                ),
              )
          ],
        ),
        const SizedBox(width: 20),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Natalie Sarah',
                style: TextStyle(
                  fontSize: 18,
                  color: chatList.status == UserStatus.online
                      ? Colors.black
                      : Colors.grey,
                ),
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Text(
                    'Hello.How are you ? .',
                    style: TextStyle(
                      color: chatList.status == UserStatus.online
                          ? Colors.black
                          : Colors.grey,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    chatList.time,
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        if (chatList.newMessage != 0) ...[
          const SizedBox(width: 20),
          Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.red.shade300,
            ),
            padding: EdgeInsets.all(5),
            child: Text(
              chatList.newMessage.toString(),
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          )
        ]
      ]),
    );
  }
}
