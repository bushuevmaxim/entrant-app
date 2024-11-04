import 'package:freezed_annotation/freezed_annotation.dart';

part 'course.freezed.dart';
part 'course.g.dart';

@freezed
class Course with _$Course {
  const factory Course({
    required String id,
    required String name,
    required String code,
    required String profile,
    required String formEducation,
    required int countPlaces,
    required int passingScore,
    required List<Graduate> graduates,
    required List<Company> practiceCompanies,
    required List<String> requiredSubjects,
    required List<String> optionalSubjects,
    required String curriculumUrl,
  }) = _Course;

  factory Course.fromJson(Map<String, Object?> json) => _$CourseFromJson(json);
}

@freezed
class Graduate with _$Graduate {
  const factory Graduate({
    required String name,
    required String date,
    required Company company,
    required String position,
    String? imageUrl,
  }) = _Graduate;

  factory Graduate.fromJson(Map<String, Object?> json) =>
      _$GraduateFromJson(json);
}

@freezed
class Company with _$Company {
  const factory Company({
    required String name,
  }) = _Company;

  factory Company.fromJson(Map<String, Object?> json) =>
      _$CompanyFromJson(json);
}
