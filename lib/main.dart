import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pmfi_entrant_app/src/features/app/presentation/app.dart';
import 'package:pmfi_entrant_app/src/features/chat/data/repositories/chat_repository_impl.dart';

import 'src/features/chat/data/storage/chat_history_storage.dart';
import 'src/features/chat/data/storage/isar_storage.dart';
import 'src/features/chat/domain/repositories/chat_repository.dart';
import 'src/features/chat/domain/storage/i_local_storage.dart';
import 'src/features/home/data/repositories/programms_repository.dart';
import 'src/features/home/domain/repositories/programms_repository.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final ILocalStorage localStorage = IsarStorage()..init();
  runApp(
    MultiRepositoryProvider(
      providers: [
        RepositoryProvider<IProgrammsRepository>(
          create: (context) => MockProgrammsRepository(),
        ),
        RepositoryProvider<IChatRepository>(
          create: (context) => ChatRepositoryImpl(
            storage: ChatHistoryStorage(
              localStorage,
            ),
          ),
        ),
      ],
      child: const MyApp(),
    ),
  );
}
