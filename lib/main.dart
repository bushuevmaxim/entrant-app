import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pmfi_entrant_app/src/features/app/presentation/app.dart';
import 'package:pmfi_entrant_app/src/features/home/data/repositories/courses_repository.dart';
import 'package:pmfi_entrant_app/src/features/home/domain/repositories/courses_repository.dart';

void main() {
  runApp(MultiRepositoryProvider(
    providers: [
      RepositoryProvider<ICoursesRepository>(
        create: (context) => MockCoursesRepository(),
      ),
    ],
    child: const MyApp(),
  ));
}
