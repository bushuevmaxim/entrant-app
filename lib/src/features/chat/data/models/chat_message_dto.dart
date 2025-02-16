import 'package:isar/isar.dart';
import '../../domain/models/chat_message.dart';

part 'chat_message_dto.g.dart';

@collection
class ChatMessageDto {
  ChatMessageDto({
    required this.id,
    required this.content,
    required this.type,
    required this.timestamp,
    this.status = MessageStatus.sent,
  });

  Id get isarId => fastHash(id);

  final String id;

  final String content;
  @enumerated
  final MessageType type;
  final DateTime timestamp;
  @enumerated
  final MessageStatus status;

  factory ChatMessageDto.fromDomain(ChatMessage message) {
    return ChatMessageDto(
      id: message.id,
      content: message.content,
      type: message.type,
      timestamp: message.timestamp,
      status: message.status,
    );
  }

  ChatMessage toDomain() {
    return ChatMessage(
      id: id,
      content: content,
      type: type,
      timestamp: timestamp,
      status: status,
    );
  }

  static int fastHash(String string) {
    var hash = 0xcbf29ce484222325;

    var i = 0;
    while (i < string.length) {
      final codeUnit = string.codeUnitAt(i++);
      hash ^= codeUnit >> 8;
      hash *= 0x100000001b3;
      hash ^= codeUnit & 0xFF;
      hash *= 0x100000001b3;
    }

    return hash;
  }
}
