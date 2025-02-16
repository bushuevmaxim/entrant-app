import 'dart:async';
import '../../domain/models/chat_message.dart';
import '../../domain/repositories/chat_repository.dart';
import '../../domain/storage/i_chat_history_storage.dart';

class ChatRepositoryImpl implements IChatRepository {
  final IChatHistoryStorage _storage;
  final List<ChatMessage> _messages = [];
  final _messagesController = StreamController<List<ChatMessage>>.broadcast();

  ChatRepositoryImpl({required IChatHistoryStorage storage})
      : _storage = storage {
    _messagesController.add(_messages);
    _loadChatHistory();
  }

  Future<void> _loadChatHistory() async {
    final savedMessages = await _storage.loadMessages();
    _messages.addAll(savedMessages.map((dto) => dto.toDomain()));
    _messagesController.add(_messages);
  }

  @override
  Stream<List<ChatMessage>> getChatMessages() => _messagesController.stream;

  @override
  Future<void> sendMessage(String content) async {
    final userMessage = ChatMessage.user(content: content);
    await saveMessage(userMessage);

    try {
      // Simulate API delay
      await Future.delayed(const Duration(seconds: 1));

      // Update message status to sent
      _updateMessage(userMessage.copyWith(status: MessageStatus.sent));

      // TODO: Replace with actual AI response
      final aiMessage = ChatMessage.assistant(
        content: "This is a mock response. Replace with actual AI integration.",
      );
      await saveMessage(aiMessage);
      await _storage.saveMessages(_messages);
    } catch (e) {
      _updateMessage(userMessage.copyWith(status: MessageStatus.error));
      rethrow;
    }
  }

  void _updateMessage(ChatMessage updatedMessage) {
    final index = _messages.indexWhere((msg) => msg.id == updatedMessage.id);
    if (index != -1) {
      _messages[index] = updatedMessage;
      _messagesController.add(_messages);
    }
  }

  @override
  Future<void> saveMessage(ChatMessage message) async {
    _messages.add(message);
    _messagesController.add(_messages);
  }

  @override
  Future<void> clearChat() async {
    _messages.clear();
    _messagesController.add(_messages);
    await _storage.clearMessages();
  }

  void dispose() {
    _messagesController.close();
  }
}
