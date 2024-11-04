import 'package:pmfi_entrant_app/src/features/home/domain/repositories/courses_repository.dart';
import 'package:pmfi_entrant_app/src/features/home/domain/entities/course.dart';

class MockCoursesRepository implements ICoursesRepository {
  static final List<Course> _courses = [
    const Course(
      id: '0',
      name: "Computer Science",
      code: "CS101",
      profile: "Bachelor of Science in Computer Science",
      formEducation: "Full-time",
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
      name: "Business Administration",
      code: "BA202",
      profile: "Bachelor of Business Administration",
      formEducation: "Part-time",
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
    const Course(
      id: '2',
      name: "Graphic Design",
      code: "GD303",
      profile: "Bachelor of Arts in Graphic Design",
      formEducation: "Full-time",
      countPlaces: 25,
      passingScore: 80,
      graduates: [
        Graduate(
          name: "Emma Brown",
          date: "2024-01-20",
          company: Company(name: "Creative Agency"),
          position: "Graphic Designer",
          imageUrl: "https://example.com/emma.jpg",
        ),
      ],
      practiceCompanies: [
        Company(name: "Creative Agency"),
        Company(name: "Design Studio"),
      ],
      requiredSubjects: ["Design Principles", "Color Theory"],
      optionalSubjects: ["Photography", "3D Modeling"],
      curriculumUrl: "https://example.com/gd_curriculum",
    ),
    const Course(
      id: '3',
      name: "Mechanical Engineering",
      code: "ME404",
      profile: "Bachelor of Science in Mechanical Engineering",
      formEducation: "Full-time",
      countPlaces: 40,
      passingScore: 85,
      graduates: [
        Graduate(
          name: "Michael Johnson",
          date: "2023-08-30",
          company: Company(name: "Engineering Solutions"),
          position: "Mechanical Engineer",
        ),
      ],
      practiceCompanies: [
        Company(name: "Engineering Solutions"),
        Company(name: "Innovative Designs"),
      ],
      requiredSubjects: ["Thermodynamics", "Fluid Mechanics"],
      optionalSubjects: ["Robotics", "Materials Science"],
      curriculumUrl: "https://example.com/me_curriculum",
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
