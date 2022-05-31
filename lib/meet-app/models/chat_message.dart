class ChatMessage {
  String time;
  String message;
  bool sender;
  bool image;
  ChatMessage({
    this.time = '',
    this.message = 'Lorem ipsum dolor sit amet\nconsectetur adipiscing elit',
    this.sender = true,
    this.image = false,
  });
}

List<ChatMessage> messages = [
  ChatMessage(
    time: '16:04',
  ),
  ChatMessage(
    time: '16:05',
    sender: false,
  ),
  ChatMessage(
    time: '16:06',
  ),
  ChatMessage(
    time: '16:07',
  ),
  ChatMessage(time: '16:11', sender: false, image: true),
  ChatMessage(
    time: '16:12',
  ),
  ChatMessage(
    time: '16:14',
    sender: false,
  ),
];
