class ChatMessage {
  String time;
  String message;
  bool sender;
  bool image;
  ChatMessage({
    this.time = '',
    this.message = 'Lorem ipsum dolor sit amet\nconsectetur adipiscing elit',
    this.sender = false,
    this.image = false,
  });
}
