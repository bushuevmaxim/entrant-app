part of 'chat_bloc.dart';

@freezed
class ChatEvent with _$ChatEvent {
  const factory ChatEvent.sendMessage(String message) = _SendMessageEvent;
  const factory ChatEvent.loadMessages() = _LoadMessagesEvent;
}
