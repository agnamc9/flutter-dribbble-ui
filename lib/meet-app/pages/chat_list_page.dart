import 'package:flutter/material.dart';
import 'package:flutter_dribbble_ui/gen/assets.gen.dart';
import 'package:flutter_dribbble_ui/meet-app/meet-app.dart';

class ChatListPage extends StatefulWidget {
  const ChatListPage({Key? key}) : super(key: key);

  @override
  State<ChatListPage> createState() => _ChatListPageState();
}

class _ChatListPageState extends State<ChatListPage> {
  @override
  Widget build(BuildContext context) {
    List<ChatList> chats = [
      ChatList(
        time: '9min',
        newMessage: 2,
      ),
      ChatList(
        time: '2.47pm',
        status: UserStatus.busy,
      ),
      ChatList(
        time: '35min',
      ),
      ChatList(
        time: '6.20pm',
        status: UserStatus.busy,
      ),
      ChatList(
        time: '4.35pm',
        status: UserStatus.offline,
        newMessage: 2,
      ),
    ];
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Stack(
                          children: [
                            CircleAvatar(
                              backgroundImage: Assets.meetApp.images.avatar,
                              radius: 20,
                            ),
                            Positioned(
                              top: 0,
                              right: 0,
                              child: Container(
                                width: 10,
                                height: 10,
                                decoration: BoxDecoration(
                                  color: Colors.green.shade400,
                                  shape: BoxShape.circle,
                                  border: Border.all(color: Colors.white),
                                ),
                              ),
                            )
                          ],
                        ),
                        const Spacer(),
                        Container(
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                          ),
                          padding: EdgeInsets.all(4),
                          child: const Icon(
                            Icons.search,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.grey.shade300,
                      ),
                      child: Row(children: [
                        Expanded(
                          child: Container(
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Text(
                              'Chats',
                              style: TextStyle(),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(),
                            child: Text(
                              'Match',
                              style: TextStyle(),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        )
                      ]),
                    ),
                    const SizedBox(height: 20),
                    Expanded(
                      child: ListView.builder(
                          itemCount: chats.length,
                          itemBuilder: (context, index) {
                            var chatList = chats[index];
                            return ChatListItem(chatList: chatList);
                          }),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            Container(
              color: Colors.white,
              padding: const EdgeInsets.all(8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Icon(Icons.home_filled),
                      SizedBox(
                        height: 10,
                      ),
                      Text('Home')
                    ],
                  ),
                  Column(
                    children: [
                      Icon(Icons.home_filled),
                      SizedBox(
                        height: 10,
                      ),
                      Text('Contact')
                    ],
                  ),
                  Column(
                    children: [
                      Icon(
                        Icons.message,
                        color: Colors.red.shade400,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Chat',
                        style: TextStyle(
                          color: Colors.red.shade400,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
