class ChatList {
  final UserStatus status;
  final String time;
  final int newMessage;

  ChatList({
    this.status = UserStatus.online,
    required this.time,
    this.newMessage = 0,
  });
}

enum UserStatus {
  online,
  busy,
  offline,
}
