import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../domain/repositories/chat_repository.dart';
import '../bloc/chat_bloc.dart';
import '../widgets/chat_message_list.dart';
import '../widgets/chat_input.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ChatBloc(
        context.read<IChatRepository>(),
      )..add(const ChatEvent.loadMessages()),
      child: const ChatScreen(),
    );
  }
}

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Виртуальный помощник'),
      ),
      body: BlocBuilder<ChatBloc, ChatState>(
        builder: (context, state) {
          return Column(
            children: [
              Expanded(
                child: switch (state) {
                  ChatLoading() || ChatInitial() => const Center(
                      child: CircularProgressIndicator(),
                    ),
                  ChatLoaded(:final messages) => messages.isEmpty
                      ? const Center(
                          child: Text('Начните диалог'),
                        )
                      : ChatMessageList(
                          messages: messages,
                        ),
                  ChatError() => const Center(
                      child: Text(
                        'Ошибка загрузки',
                        style: TextStyle(color: Colors.red),
                      ),
                    ),
                },
              ),
              ChatInput(
                onSend: (message) {
                  context.read<ChatBloc>().add(
                        ChatEvent.sendMessage(message),
                      );
                },
              ),
            ],
          );
        },
      ),
    );
  }
}
