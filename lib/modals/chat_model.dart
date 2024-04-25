class ChatModel {
  String id;
  String type;
  String content;
  DateTime time;
  bool isSendByMe;
  String chatRoomId;

  ChatModel(
      {required this.id,
      required this.type,
      required this.content,
      required this.time,
      required this.isSendByMe,
      required this.chatRoomId});

  ChatModel.fromJson(Map<String, dynamic> json)
      : id = json['id'] ?? '',
        type = json['type'] ?? 'text',
        content = json['content'] ?? '',
        time = json['time'] == null
            ? DateTime.now()
            : DateTime.parse(json['time']),
        isSendByMe = json['isSendByMe'].toString() == "true",
        chatRoomId = json['chatRoomId'] ?? '';
}
