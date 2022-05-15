import 'package:flutter/material.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(252, 249, 250, 1),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Row(
                children: [
                  const Icon(
                    Icons.arrow_back_ios_new,
                    color: Colors.grey,
                  ),
                  const SizedBox(width: 10),
                  const CircleAvatar(),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text('Natalie Sarah'),
                        const SizedBox(height: 5),
                        const Text('Online'),
                      ],
                    ),
                  ),
                  const Icon(
                    Icons.call,
                    color: Colors.grey,
                  ),
                  const SizedBox(width: 10),
                  const Icon(
                    Icons.info_outline,
                    color: Colors.grey,
                  ),
                ],
              ),
              const SizedBox(height: 10),
              const Divider(
                color: Colors.grey,
              ),
              const SizedBox(height: 10),
              Expanded(
                child: Container(),
              ),
              const SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}
