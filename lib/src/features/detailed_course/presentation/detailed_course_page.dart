import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pmfi_entrant_app/src/features/detailed_course/presentation/bloc/detailed_course_bloc.dart';
import 'package:pmfi_entrant_app/src/features/home/domain/repositories/courses_repository.dart';

class DetailedCoursePage extends StatelessWidget {
  final String courseId;
  const DetailedCoursePage({
    required this.courseId,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider<DetailedCourseBloc>(
      create: (context) => DetailedCourseBloc(
        coursesRepository: context.read<ICoursesRepository>(),
        courseId: courseId,
      )..add(
          const DetailedCourseEvent.started(),
        ),
      child: const DetailedCourseView(),
    );
  }
}

class DetailedCourseView extends StatelessWidget {
  const DetailedCourseView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          AppBar(title: BlocBuilder<DetailedCourseBloc, DetailedCourseState>(
        builder: (context, state) {
          return switch (state) {
            Success(:final course) => Text(
                course.name,
              ),
            _ => const SizedBox()
          };
        },
      )),
      body: Center(
        child: BlocBuilder<DetailedCourseBloc, DetailedCourseState>(
          builder: (context, state) {
            return switch (state) {
              Success(:final course) => Text(
                  course.profile,
                ),
              _ => const CircularProgressIndicator()
            };
          },
        ),
      ),
    );
  }
}
