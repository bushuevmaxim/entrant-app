import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pmfi_entrant_app/src/features/app/presentation/app.dart';

import 'src/features/home/data/repositories/programms_repository.dart';
import 'src/features/home/domain/repositories/programms_repository.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    MultiRepositoryProvider(
      providers: [
        RepositoryProvider<IProgrammsRepository>(
          create: (context) => MockProgrammsRepository(),
        ),
      ],
      child: const MyApp(),
    ),
  );
}
