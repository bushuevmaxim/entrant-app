import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../home/domain/entities/course.dart';
import '../../../home/domain/repositories/courses_repository.dart';

part 'detailed_course_event.dart';
part 'detailed_course_state.dart';
part 'detailed_course_bloc.freezed.dart';

class DetailedCourseBloc
    extends Bloc<DetailedCourseEvent, DetailedCourseState> {
  final ICoursesRepository _coursesRepository;
  final String _courseId;

  DetailedCourseBloc({
    required ICoursesRepository coursesRepository,
    required String courseId,
  })  : _coursesRepository = coursesRepository,
        _courseId = courseId,
        super(const Initial()) {
    on<_Started>(_onStarted);
  }

  Future<void> _onStarted(
    DetailedCourseEvent event,
    Emitter<DetailedCourseState> emit,
  ) async {
    emit(const Loading());

    try {
      final course = await _coursesRepository.getCourseById(id: _courseId);
      emit(Success(course: course));
    } catch (e) {
      emit(const Failure());
    }
  }
}
