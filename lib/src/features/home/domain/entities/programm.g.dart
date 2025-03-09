// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'programm.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProgrammImpl _$$ProgrammImplFromJson(Map<String, dynamic> json) =>
    _$ProgrammImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      code: json['code'] as String,
      educationLevel: json['educationLevel'] as String,
      profiles: (json['profiles'] as List<dynamic>)
          .map((e) => Profile.fromJson(e as Map<String, dynamic>))
          .toList(),
      requiredExams: (json['requiredExams'] as List<dynamic>)
          .map((e) => Exam.fromJson(e as Map<String, dynamic>))
          .toList(),
      electiveExams: (json['electiveExams'] as List<dynamic>)
          .map((e) => Exam.fromJson(e as Map<String, dynamic>))
          .toList(),
      companies: (json['companies'] as List<dynamic>)
          .map((e) => Company.fromJson(e as Map<String, dynamic>))
          .toList(),
      graduates: (json['graduates'] as List<dynamic>)
          .map((e) => Graduate.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ProgrammImplToJson(_$ProgrammImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'code': instance.code,
      'educationLevel': instance.educationLevel,
      'profiles': instance.profiles,
      'requiredExams': instance.requiredExams,
      'electiveExams': instance.electiveExams,
      'companies': instance.companies,
      'graduates': instance.graduates,
    };

_$ProfileImpl _$$ProfileImplFromJson(Map<String, dynamic> json) =>
    _$ProfileImpl(
      name: json['name'] as String,
      studyForms: (json['studyForms'] as List<dynamic>)
          .map((e) => ProfileStudyForm.fromJson(e as Map<String, dynamic>))
          .toList(),
      courses: (json['courses'] as List<dynamic>)
          .map((e) => ProfileCourse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ProfileImplToJson(_$ProfileImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'studyForms': instance.studyForms,
      'courses': instance.courses,
    };

_$ProfileCourseImpl _$$ProfileCourseImplFromJson(Map<String, dynamic> json) =>
    _$ProfileCourseImpl(
      disciplines: (json['disciplines'] as List<dynamic>)
          .map((e) => Discipline.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ProfileCourseImplToJson(_$ProfileCourseImpl instance) =>
    <String, dynamic>{
      'disciplines': instance.disciplines,
    };

_$DisciplineImpl _$$DisciplineImplFromJson(Map<String, dynamic> json) =>
    _$DisciplineImpl(
      name: json['name'] as String,
    );

Map<String, dynamic> _$$DisciplineImplToJson(_$DisciplineImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
    };

_$ProfileStudyFormImpl _$$ProfileStudyFormImplFromJson(
        Map<String, dynamic> json) =>
    _$ProfileStudyFormImpl(
      studyForm: StudyForm.fromJson(json['studyForm'] as Map<String, dynamic>),
      year: (json['year'] as num).toInt(),
      nPlacesBudget: (json['nPlacesBudget'] as num?)?.toInt(),
      nPlacesPaid: (json['nPlacesPaid'] as num?)?.toInt(),
      costPerYear: (json['costPerYear'] as num?)?.toInt(),
      passingScoreBudget: (json['passingScoreBudget'] as num?)?.toInt(),
      passingScorePaid: (json['passingScorePaid'] as num?)?.toInt(),
      minScorePaid: (json['minScorePaid'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$ProfileStudyFormImplToJson(
        _$ProfileStudyFormImpl instance) =>
    <String, dynamic>{
      'studyForm': instance.studyForm,
      'year': instance.year,
      'nPlacesBudget': instance.nPlacesBudget,
      'nPlacesPaid': instance.nPlacesPaid,
      'costPerYear': instance.costPerYear,
      'passingScoreBudget': instance.passingScoreBudget,
      'passingScorePaid': instance.passingScorePaid,
      'minScorePaid': instance.minScorePaid,
    };

_$StudyFormImpl _$$StudyFormImplFromJson(Map<String, dynamic> json) =>
    _$StudyFormImpl(
      name: json['name'] as String,
    );

Map<String, dynamic> _$$StudyFormImplToJson(_$StudyFormImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
    };

_$ExamImpl _$$ExamImplFromJson(Map<String, dynamic> json) => _$ExamImpl(
      name: json['name'] as String,
    );

Map<String, dynamic> _$$ExamImplToJson(_$ExamImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
    };

_$CompanyImpl _$$CompanyImplFromJson(Map<String, dynamic> json) =>
    _$CompanyImpl(
      name: json['name'] as String,
      imageUrl: json['imageUrl'] as String?,
    );

Map<String, dynamic> _$$CompanyImplToJson(_$CompanyImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'imageUrl': instance.imageUrl,
    };

_$GraduateImpl _$$GraduateImplFromJson(Map<String, dynamic> json) =>
    _$GraduateImpl(
      firstName: json['firstName'] as String,
      secondName: json['secondName'] as String,
      role: json['role'] as String,
      companyName: json['companyName'] as String,
      photo: json['photo'] as String?,
    );

Map<String, dynamic> _$$GraduateImplToJson(_$GraduateImpl instance) =>
    <String, dynamic>{
      'firstName': instance.firstName,
      'secondName': instance.secondName,
      'role': instance.role,
      'companyName': instance.companyName,
      'photo': instance.photo,
    };
