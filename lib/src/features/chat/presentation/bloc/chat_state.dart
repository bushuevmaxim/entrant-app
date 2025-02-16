part of 'chat_bloc.dart';

@freezed
sealed class ChatState with _$ChatState {
  const factory ChatState.initial() = ChatInitial;
  const factory ChatState.loading() = ChatLoading;
  const factory ChatState.loaded(List<ChatMessage> messages) = ChatLoaded;
  const factory ChatState.error(String message) = ChatError;
}
