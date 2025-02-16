import 'package:flutter_bloc/flutter_bloc.dart';
import '../../domain/models/chat_message.dart';
import '../../domain/repositories/chat_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_event.dart';
part 'chat_state.dart';
part 'chat_bloc.freezed.dart';

class ChatBloc extends Bloc<ChatEvent, ChatState> {
  final IChatRepository _repository;

  ChatBloc(this._repository) : super(const ChatState.initial()) {
    on<_SendMessageEvent>(_onSendMessage);
    on<_LoadMessagesEvent>(_onLoadMessages);
  }

  Future<void> _onLoadMessages(
    _LoadMessagesEvent event,
    Emitter<ChatState> emit,
  ) async {
    emit(const ChatState.loading());
    try {
      await emit.forEach(
        _repository.getChatMessages(),
        onData: (List<ChatMessage> messages) =>
            ChatState.loaded(List.from(messages)),
        onError: (error, stackTrace) => ChatState.error(error.toString()),
      );
    } catch (e) {
      emit(ChatState.error(e.toString()));
    }
  }

  Future<void> _onSendMessage(
    _SendMessageEvent event,
    Emitter<ChatState> emit,
  ) async {
    try {
      await _repository.sendMessage(event.message);
    } catch (e) {
      emit(ChatState.error(e.toString()));
    }
  }
}
