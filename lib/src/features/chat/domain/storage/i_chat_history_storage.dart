import '../../data/models/chat_message_dto.dart';
import '../models/chat_message.dart';

abstract interface class IChatHistoryStorage {
  Future<void> saveMessages(List<ChatMessage> messages);
  Future<List<ChatMessageDto>> loadMessages();
  Future<void> clearMessages();
}
