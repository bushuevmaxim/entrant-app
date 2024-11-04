import 'package:pmfi_entrant_app/src/features/home/domain/entities/course.dart';

abstract interface class ICoursesRepository {
  Future<List<Course>> getCourses();
  Future<Course> getCourseById({required String id});
}
