import 'package:pmfi_entrant_app/src/features/home/domain/repositories/courses_repository.dart';
import 'package:pmfi_entrant_app/src/features/home/domain/entities/course.dart';

class MockCoursesRepository implements ICoursesRepository {
  static final List<Course> _courses = [
    const Course(
      id: '0',
      name: "Фундаментальная информатика и информационные технологии",
      code: "02.03.02",
      profile: "Bachelor of Science in Computer Science",
      formEducation: "Бакалавриат",
      countPlaces: 50,
      passingScore: 75,
      graduates: [
        Graduate(
          name: "Alice Smith",
          date: "2023-05-15",
          company: Company(name: "Tech Innovations"),
          position: "Software Engineer",
          imageUrl: "https://example.com/alice.jpg",
        ),
      ],
      practiceCompanies: [
        Company(name: "Tech Innovations"),
        Company(name: "Global Solutions"),
      ],
      requiredSubjects: ["Mathematics", "Programming", "Data Structures"],
      optionalSubjects: ["Artificial Intelligence", "Web Development"],
      curriculumUrl: "https://example.com/cs_curriculum",
    ),
    const Course(
      id: '1',
      name:
          "Математическое обеспечение и администрирование информационных систем",
      code: "02.03.03",
      profile: "Bachelor of Business Administration",
      formEducation: "Бакалавриат",
      countPlaces: 30,
      passingScore: 70,
      graduates: [
        Graduate(
          name: "John Doe",
          date: "2022-12-10",
          company: Company(name: "Business Corp"),
          position: "Marketing Manager",
        ),
      ],
      practiceCompanies: [
        Company(name: "Business Corp"),
        Company(name: "Finance Group"),
      ],
      requiredSubjects: ["Economics", "Accounting", "Management"],
      optionalSubjects: ["Entrepreneurship", "Business Law"],
      curriculumUrl: "https://example.com/ba_curriculum",
    ),
  ];
  @override
  Future<List<Course>> getCourses() async {
    await Future.delayed(const Duration(seconds: 1));
    return _courses;
  }

  @override
  Future<Course> getCourseById({required String id}) async {
    await Future.delayed(const Duration(seconds: 1));
    return _courses.firstWhere((course) => course.id == id);
  }
}
