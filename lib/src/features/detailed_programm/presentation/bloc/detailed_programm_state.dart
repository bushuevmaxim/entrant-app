part of 'detailed_programm_bloc.dart';

@freezed
sealed class DetailedProgrammState with _$DetailedProgrammState {
  const factory DetailedProgrammState.initial() = Initial;
  const factory DetailedProgrammState.loading() = Loading;
  const factory DetailedProgrammState.success({required Programm programm}) =
      Success;
  const factory DetailedProgrammState.failure() = Failure;
}
