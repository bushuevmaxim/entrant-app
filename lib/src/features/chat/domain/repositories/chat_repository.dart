import '../models/chat_message.dart';

abstract interface class IChatRepository {
  Stream<List<ChatMessage>> getChatMessages();
  Future<void> sendMessage(String content);
  Future<void> saveMessage(ChatMessage message);
  Future<void> clearChat();
}
