import 'package:pmfi_entrant_app/src/features/home/domain/repositories/programms_repository.dart';
import 'package:pmfi_entrant_app/src/features/home/domain/entities/programm.dart';

class MockProgrammsRepository implements IProgrammsRepository {
  static final List<Programm> _programms = [
    const Programm(
      id: '0',
      code: '02.03.02',
      name: "Фундаментальная информатика и информационные технологии",
      educationLevel: 'Бакалавриат',
      profiles: [
        Profile(
          name: 'Технологии искусственного интеллекта',
          studyForms: [
            ProfileStudyForm(
              studyForm: StudyForm(
                name: 'Очно',
              ),
              year: 2024,
              nPlacesBudget: 55,
              nPlacesPaid: 25,
              costPerYear: 180000,
              passingScoreBudget: 75,
              passingScorePaid: 65,
              minScorePaid: 45,
            ),
          ],
          courses: [
            ProfileCourse(
              disciplines: [
                Discipline(
                  name: 'Дискретная математика',
                ),
                Discipline(name: 'Алгебра'),
              ],
            ),
            ProfileCourse(
              disciplines: [
                Discipline(
                  name: 'NLP',
                ),
                Discipline(name: 'Алгебра'),
              ],
            ),
            ProfileCourse(
              disciplines: [
                Discipline(
                  name: 'Дискретная математика',
                ),
                Discipline(name: 'Алгебра'),
              ],
            ),
            ProfileCourse(
              disciplines: [
                Discipline(
                  name: 'Компьютерное зрение',
                ),
                Discipline(name: 'Алгебра'),
              ],
            ),
          ],
        ),
      ],
      requiredExams: [
        Exam(name: 'Математика'),
        Exam(name: 'Русский язык'),
      ],
      electiveExams: [
        Exam(name: 'Физика'),
        Exam(name: 'Информатика'),
      ],
      companies: [
        Company(name: "Effective"),
        Company(name: "7bits"),
      ],
      graduates: [
        Graduate(
          firstName: "Максим",
          secondName: "Бушуев",
          role: "Flutter-разработчик",
          companyName: "Effective",
        ),
        Graduate(
          firstName: "Максим",
          secondName: "Бушуев",
          role: "Flutter-разработчик",
          companyName: "Effective",
        ),
        Graduate(
          firstName: "Максим",
          secondName: "Бушуев",
          role: "Flutter-разработчик",
          companyName: "Effective",
        ),
      ],
    ),
    const Programm(
      id: '1',
      code: '02.03.03',
      name:
          "Математическое обеспечение и администрирование информационных систем",
      educationLevel: 'Бакалавриат',
      profiles: [
        Profile(
          name: 'Технологии больших данных',
          studyForms: [
            ProfileStudyForm(
              studyForm: StudyForm(
                name: 'Очно',
              ),
              year: 2024,
              nPlacesBudget: 25,
              nPlacesPaid: 20,
              costPerYear: 160000,
              passingScoreBudget: 70,
              passingScorePaid: 60,
              minScorePaid: 40,
            ),
          ],
          courses: [
            ProfileCourse(
              disciplines: [
                Discipline(
                  name: 'Дискретная математика',
                ),
                Discipline(name: 'Алгебра'),
              ],
            ),
            ProfileCourse(
              disciplines: [
                Discipline(
                  name: 'NLP',
                ),
                Discipline(name: 'Алгебра'),
              ],
            ),
            ProfileCourse(
              disciplines: [
                Discipline(
                  name: 'Дискретная математика',
                ),
                Discipline(name: 'Алгебра'),
              ],
            ),
            ProfileCourse(
              disciplines: [
                Discipline(
                  name: 'Компьютерное зрение',
                ),
                Discipline(name: 'Алгебра'),
              ],
            ),
          ],
        ),
        Profile(
          name: 'Технологии больших данных',
          studyForms: [
            ProfileStudyForm(
              studyForm: StudyForm(
                name: 'Очно',
              ),
              year: 2024,
              nPlacesBudget: 25,
              nPlacesPaid: 20,
              costPerYear: 160000,
              passingScoreBudget: 999,
              passingScorePaid: 60,
              minScorePaid: 40,
            ),
            ProfileStudyForm(
              studyForm: StudyForm(
                name: 'Заочно',
              ),
              year: 2024,
              nPlacesBudget: 25,
              nPlacesPaid: 20,
              costPerYear: 160000,
              passingScoreBudget: 70,
              passingScorePaid: 60,
              minScorePaid: 40,
            ),
          ],
          courses: [
            ProfileCourse(
              disciplines: [
                Discipline(
                  name: 'Дискретная математика',
                ),
                Discipline(name: 'Алгебра'),
              ],
            ),
            ProfileCourse(
              disciplines: [
                Discipline(
                  name: 'NLP',
                ),
                Discipline(name: 'Алгебра'),
              ],
            ),
            ProfileCourse(
              disciplines: [
                Discipline(
                  name: 'Дискретная математика',
                ),
                Discipline(name: 'Алгебра'),
              ],
            ),
            ProfileCourse(
              disciplines: [
                Discipline(
                  name: 'Компьютерное зрение',
                ),
                Discipline(name: 'Алгебра'),
              ],
            ),
          ],
        ),
      ],
      requiredExams: [
        Exam(name: 'Математика'),
        Exam(name: 'Русский язык'),
      ],
      electiveExams: [
        Exam(name: 'Физика'),
        Exam(name: 'Информатика'),
        Exam(name: 'Химия'),
      ],
      companies: [
        Company(
          name: "Effective",
          imageUrl:
              'https://habrastorage.org/getpro/moikrug/uploads/user/100/089/630/1/avatar/medium_d41aa6172a5f33a720fbd7814c666edb.jpg',
        ),
        Company(
          name: "Effective",
          imageUrl:
              'https://habrastorage.org/getpro/moikrug/uploads/user/100/089/630/1/avatar/medium_d41aa6172a5f33a720fbd7814c666edb.jpg',
        ),
        Company(
          name: "Effective",
          imageUrl:
              'https://habrastorage.org/getpro/moikrug/uploads/user/100/089/630/1/avatar/medium_d41aa6172a5f33a720fbd7814c666edb.jpg',
        ),
        Company(
          name: "Effective",
          imageUrl:
              'https://habrastorage.org/getpro/moikrug/uploads/user/100/089/630/1/avatar/medium_d41aa6172a5f33a720fbd7814c666edb.jpg',
        ),
        Company(
          name: "Effective",
          imageUrl:
              'https://habrastorage.org/getpro/moikrug/uploads/user/100/089/630/1/avatar/medium_d41aa6172a5f33a720fbd7814c666edb.jpg',
        ),
        Company(
          name: "Effective",
          imageUrl:
              'https://habrastorage.org/getpro/moikrug/uploads/user/100/089/630/1/avatar/medium_d41aa6172a5f33a720fbd7814c666edb.jpg',
        ),
        Company(
          name: "Effective",
          imageUrl:
              'https://habrastorage.org/getpro/moikrug/uploads/user/100/089/630/1/avatar/medium_d41aa6172a5f33a720fbd7814c666edb.jpg',
        ),
        Company(
          name: "Effective",
          imageUrl:
              'https://habrastorage.org/getpro/moikrug/uploads/user/100/089/630/1/avatar/medium_d41aa6172a5f33a720fbd7814c666edb.jpg',
        ),
        Company(
          name: "Effective",
          imageUrl:
              'https://habrastorage.org/getpro/moikrug/uploads/user/100/089/630/1/avatar/medium_d41aa6172a5f33a720fbd7814c666edb.jpg',
        ),
        Company(name: "7bits"),
      ],
      graduates: [
        Graduate(
          firstName: "Максим",
          secondName: "Бушуев",
          role: "Flutter-разработчик",
          companyName: "Effective",
        ),
        Graduate(
          firstName: "Максим",
          secondName: "Бушуев",
          role: "Flutter-разработчик",
          companyName: "Effective",
          photo:
              'https://diqmdwhttngxa.cloudfront.net/23584/16254/katherine-beth-photography-san-diego-family-photographer-graduate-2023-2034-college-grad-sdsu-graduation-photos20220513_0681_960.jpg',
        ),
        Graduate(
          firstName: "Максим",
          secondName: "Бушуев",
          role: "Flutter-разработчик",
          companyName: "Effective",
        ),
      ],
    ),
  ];

  @override
  Future<List<Programm>> getProgramms() async {
    await Future.delayed(const Duration(seconds: 1));
    return _programms;
  }

  @override
  Future<Programm> getProgrammById({required String id}) async {
    await Future.delayed(const Duration(seconds: 1));
    return _programms.firstWhere((programm) => programm.id == id);
  }
}
