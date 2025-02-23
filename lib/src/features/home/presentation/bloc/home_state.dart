part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.initial() = Initial;
  const factory HomeState.loading() = Loading;
  const factory HomeState.success({required List<Programm> programms}) =
      Success;
  const factory HomeState.failure() = Failure;
}
