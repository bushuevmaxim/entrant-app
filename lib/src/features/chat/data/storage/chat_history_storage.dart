import '../../domain/models/chat_message.dart';
import '../../domain/storage/i_chat_history_storage.dart';
import '../../domain/storage/i_local_storage.dart';
import '../models/chat_message_dto.dart';

class ChatHistoryStorage implements IChatHistoryStorage {
  final ILocalStorage _localStorage;

  ChatHistoryStorage(this._localStorage);

  @override
  Future<void> saveMessages(List<ChatMessage> messages) async {
    final dtos = messages.map((msg) => ChatMessageDto.fromDomain(msg)).toList();
    await _localStorage.saveAll(dtos);
  }

  @override
  Future<List<ChatMessageDto>> loadMessages() async {
    return await _localStorage.fetchAll<ChatMessageDto>();
  }

  @override
  Future<void> clearMessages() async {
    await _localStorage.clear<ChatMessageDto>();
  }
}
