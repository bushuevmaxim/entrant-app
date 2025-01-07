part of 'detailed_course_bloc.dart';

@freezed
class DetailedCourseState with _$DetailedCourseState {
  const factory DetailedCourseState.initial() = Initial;
  const factory DetailedCourseState.loading() = Loading;
  const factory DetailedCourseState.success({required Course course}) = Success;
  const factory DetailedCourseState.failure() = Failure;
}
