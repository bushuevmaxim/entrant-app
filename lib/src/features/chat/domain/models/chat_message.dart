import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_message.freezed.dart';

enum MessageType {
  user,
  assistant,
}

enum MessageStatus {
  sending,
  sent,
  error,
}

@freezed
class ChatMessage with _$ChatMessage {
  const factory ChatMessage({
    required String id,
    required String content,
    required MessageType type,
    required DateTime timestamp,
    @Default(MessageStatus.sent) MessageStatus status,
  }) = _ChatMessage;

  factory ChatMessage.user({
    required String content,
    MessageStatus status = MessageStatus.sending,
  }) {
    return ChatMessage(
      id: DateTime.now().millisecondsSinceEpoch.toString(),
      content: content,
      type: MessageType.user,
      timestamp: DateTime.now(),
      status: status,
    );
  }

  factory ChatMessage.assistant({
    required String content,
  }) {
    return ChatMessage(
      id: DateTime.now().millisecondsSinceEpoch.toString(),
      content: content,
      type: MessageType.assistant,
      timestamp: DateTime.now(),
    );
  }
}
