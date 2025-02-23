import 'package:freezed_annotation/freezed_annotation.dart';

part 'programm.freezed.dart';
part 'programm.g.dart';

@freezed
class Programm with _$Programm {
  const factory Programm({
    required String id,
    required String name,
    required String code,
    required String educationLevel,
    required List<Profile> profiles,
    required List<Exam> requiredExams,
    required List<Exam> electiveExams,
    required List<Company> companies,
    required List<Graduate> graduates,
  }) = _Programm;

  factory Programm.fromJson(Map<String, Object?> json) =>
      _$ProgrammFromJson(json);
}

@freezed
class Profile with _$Profile {
  const factory Profile({
    required String name,
    required List<ProfileStudyForm> studyForms,
    required List<ProfileCourse> courses,
  }) = _Profile;

  factory Profile.fromJson(Map<String, Object?> json) =>
      _$ProfileFromJson(json);
}

@freezed
class ProfileCourse with _$ProfileCourse {
  const factory ProfileCourse({
    required List<Discipline> disciplines,
  }) = _ProfileCourse;

  factory ProfileCourse.fromJson(Map<String, Object?> json) =>
      _$ProfileCourseFromJson(json);
}

@freezed
class Discipline with _$Discipline {
  const factory Discipline({
    required String name,
  }) = _Discipline;

  factory Discipline.fromJson(Map<String, Object?> json) =>
      _$DisciplineFromJson(json);
}

@freezed
class ProfileStudyForm with _$ProfileStudyForm {
  const factory ProfileStudyForm({
    required StudyForm studyForm,
    required int year,
    int? nPlacesBudget,
    int? nPlacesPaid,
    int? costPerYear,
    int? passingScoreBudget,
    int? passingScorePaid,
    int? minScorePaid,
  }) = _ProfileStudyForm;

  factory ProfileStudyForm.fromJson(Map<String, Object?> json) =>
      _$ProfileStudyFormFromJson(json);
}

@freezed
class StudyForm with _$StudyForm {
  const factory StudyForm({
    required String name,
  }) = _StudyForm;

  factory StudyForm.fromJson(Map<String, Object?> json) =>
      _$StudyFormFromJson(json);
}

@freezed
class Exam with _$Exam {
  const factory Exam({
    required String name,
  }) = _Exam;

  factory Exam.fromJson(Map<String, Object?> json) => _$ExamFromJson(json);
}

@freezed
class Company with _$Company {
  const factory Company({
    required String name,
    String? logo,
  }) = _Company;

  factory Company.fromJson(Map<String, Object?> json) =>
      _$CompanyFromJson(json);
}

@freezed
class Graduate with _$Graduate {
  const factory Graduate({
    required String firstName,
    required String secondName,
    required String role,
    required String companyName,
    String? photo,
  }) = _Graduate;

  factory Graduate.fromJson(Map<String, Object?> json) =>
      _$GraduateFromJson(json);
}
