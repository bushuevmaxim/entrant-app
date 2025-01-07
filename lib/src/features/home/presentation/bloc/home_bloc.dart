import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pmfi_entrant_app/src/features/home/domain/entities/course.dart';
import 'package:pmfi_entrant_app/src/features/home/domain/repositories/courses_repository.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final ICoursesRepository _coursesRepository;

  HomeBloc({required ICoursesRepository coursesRepository})
      : _coursesRepository = coursesRepository,
        super(const Initial()) {
    on<_Started>(_onStarted);
  }

  Future<void> _onStarted(HomeEvent event, Emitter<HomeState> emit) async {
    emit(const Loading());

    try {
      final courses = await _coursesRepository.getCourses();
      emit(Success(courses: courses));
    } catch (e) {
      emit(const Failure());
    }
  }
}
