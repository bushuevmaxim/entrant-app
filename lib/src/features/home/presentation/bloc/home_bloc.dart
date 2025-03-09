import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pmfi_entrant_app/src/features/home/domain/repositories/programms_repository.dart';

import '../../domain/entities/programm.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final IProgrammsRepository _programmRepository;

  HomeBloc({required IProgrammsRepository programmsRepository})
      : _programmRepository = programmsRepository,
        super(const Initial()) {
    on<_Started>(_onStarted);
  }

  Future<void> _onStarted(HomeEvent event, Emitter<HomeState> emit) async {
    emit(const Loading());

    try {
      final programms = await _programmRepository.getProgramms();
      emit(Success(programms: programms));
    } catch (e) {
      emit(const Failure());
    }
  }
}
