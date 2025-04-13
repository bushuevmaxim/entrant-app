import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pmfi_entrant_app/src/features/app/presentation/app.dart';

import 'src/features/home/data/repositories/programms_repository.dart';
import 'src/features/home/domain/repositories/programms_repository.dart';
import 'src/features/calendar_events/data/repositories/mock_events_repository.dart';
import 'src/features/calendar_events/domain/repositories/events_repository.dart';
import 'src/utils/platform_utils.dart'
    if (kIsWeb) 'src/utils/platform_utils_web.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  configureApp();

  runApp(
    MultiRepositoryProvider(
      providers: [
        RepositoryProvider<IProgrammsRepository>(
          create: (context) => MockProgrammsRepository(),
        ),
        RepositoryProvider<IEventsRepository>(
          create: (context) => MockEventsRepository(),
        ),
      ],
      child: const MyApp(),
    ),
  );
}
