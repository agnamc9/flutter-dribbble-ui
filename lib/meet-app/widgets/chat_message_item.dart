import 'package:flutter/material.dart';
import 'package:flutter_dribbble_ui/gen/assets.gen.dart';
import 'package:flutter_dribbble_ui/meet-app/meet-app.dart';

class ChatMessageItem extends StatelessWidget {
  final ChatMessage message;
  const ChatMessageItem({
    Key? key,
    required this.message,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        bottom: 24,
        right: message.sender ? 16 : 0,
        left: message.sender ? 0 : 16,
      ),
      child: Align(
        alignment:
            message.sender ? Alignment.centerLeft : Alignment.centerRight,
        child: Column(
          crossAxisAlignment: message.sender
              ? CrossAxisAlignment.start
              : CrossAxisAlignment.end,
          children: [
            if (!message.image)
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: message.sender ? Colors.grey.shade200 : Colors.green,
                ),
                padding:
                    const EdgeInsets.symmetric(horizontal: 8, vertical: 12),
                child: Text(
                  message.message,
                  style: TextStyle(
                    color: message.sender ? Colors.black : Colors.white,
                  ),
                ),
              )
            else
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Assets.meetApp.images.avatar.image(
                  width: 250,
                  height: 250,
                  fit: BoxFit.cover,
                ),
              ),
            const SizedBox(height: 10),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  message.time,
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
                if (!message.sender) ...[
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.done_all,
                    color: Colors.green,
                  )
                ]
              ],
            ),
          ],
        ),
      ),
    );
  }
}
