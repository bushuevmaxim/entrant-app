import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../home/domain/entities/programm.dart';
import '../../../home/domain/repositories/programms_repository.dart';

part 'detailed_programm_event.dart';
part 'detailed_programm_state.dart';
part 'detailed_programm_bloc.freezed.dart';

class DetailedProgrammBloc
    extends Bloc<DetailedProgrammEvent, DetailedProgrammState> {
  final IProgrammsRepository _programmRepository;
  final String _programmId;

  DetailedProgrammBloc({
    required IProgrammsRepository programmRepository,
    required String programmId,
  })  : _programmRepository = programmRepository,
        _programmId = programmId,
        super(const DetailedProgrammState.initial()) {
    on<_Started>(_onStarted);
  }

  Future<void> _onStarted(
    DetailedProgrammEvent event,
    Emitter<DetailedProgrammState> emit,
  ) async {
    emit(const DetailedProgrammState.loading());

    try {
      final programm =
          await _programmRepository.getProgrammById(id: _programmId);
      emit(DetailedProgrammState.success(programm: programm));
    } catch (e) {
      emit(const DetailedProgrammState.failure());
    }
  }
}
