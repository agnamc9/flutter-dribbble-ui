import 'package:flutter/material.dart';
import 'package:flutter_dribbble_ui/gen/assets.gen.dart';
import 'package:flutter_dribbble_ui/meet-app/meet-app.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    List<ChatMessage> messages = [
      ChatMessage(
        time: '16:04',
      ),
      ChatMessage(
        time: '16:05',
        sender: true,
      ),
      ChatMessage(
        time: '16:06',
      ),
      ChatMessage(
        time: '16:07',
      ),
      ChatMessage(
        time: '16:11',
        image: true,
        sender: true,
      ),
      ChatMessage(
        time: '16:12',
      ),
      ChatMessage(
        time: '16:14',
        sender: true,
      ),
    ];
    return Scaffold(
      backgroundColor: const Color.fromRGBO(252, 249, 250, 1),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  const Icon(
                    Icons.arrow_back_ios_new,
                    color: Colors.grey,
                  ),
                  const SizedBox(width: 10),
                  Stack(
                    children: [
                      CircleAvatar(
                        backgroundImage: Assets.meetApp.images.avatar,
                        radius: 25,
                      ),
                      Positioned(
                        bottom: 2,
                        right: 0,
                        child: Container(
                          width: 12,
                          height: 12,
                          decoration: BoxDecoration(
                            color: Colors.green.shade400,
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.white),
                          ),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Natalie Sarah',
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                        SizedBox(height: 5),
                        Text('Online'),
                      ],
                    ),
                  ),
                  const Icon(
                    Icons.call,
                    color: Colors.black,
                  ),
                  const SizedBox(width: 10),
                  const Icon(
                    Icons.info_outline,
                    color: Colors.grey,
                  ),
                ],
              ),
            ),
            const Divider(
              color: Colors.grey,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Expanded(
                      child: ListView.builder(
                          itemCount: messages.length,
                          itemBuilder: (context, index) {
                            var message = messages[index];
                            return ChatMessageItem(message: message);
                          }),
                    ),
                    const SizedBox(height: 20),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.shade200,
                              offset: const Offset(0.5, 0.5),
                              blurRadius: 10,
                              spreadRadius: 10,
                            ),
                          ]),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 12),
                      margin: const EdgeInsets.symmetric(horizontal: 8),
                      child: Row(
                        children: const [
                          Icon(
                            Icons.mic_none_rounded,
                            color: Colors.grey,
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Expanded(
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: "Type something",
                                border: InputBorder.none,
                                isDense: true,
                              ),
                              style: TextStyle(fontSize: 12),
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Icon(
                            Icons.image,
                            color: Colors.grey,
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Icon(
                            Icons.send,
                            color: Colors.grey,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
