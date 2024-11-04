// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'course.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CourseImpl _$$CourseImplFromJson(Map<String, dynamic> json) => _$CourseImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      code: json['code'] as String,
      profile: json['profile'] as String,
      formEducation: json['formEducation'] as String,
      countPlaces: (json['countPlaces'] as num).toInt(),
      passingScore: (json['passingScore'] as num).toInt(),
      graduates: (json['graduates'] as List<dynamic>)
          .map((e) => Graduate.fromJson(e as Map<String, dynamic>))
          .toList(),
      practiceCompanies: (json['practiceCompanies'] as List<dynamic>)
          .map((e) => Company.fromJson(e as Map<String, dynamic>))
          .toList(),
      requiredSubjects: (json['requiredSubjects'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      optionalSubjects: (json['optionalSubjects'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      curriculumUrl: json['curriculumUrl'] as String,
    );

Map<String, dynamic> _$$CourseImplToJson(_$CourseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'code': instance.code,
      'profile': instance.profile,
      'formEducation': instance.formEducation,
      'countPlaces': instance.countPlaces,
      'passingScore': instance.passingScore,
      'graduates': instance.graduates,
      'practiceCompanies': instance.practiceCompanies,
      'requiredSubjects': instance.requiredSubjects,
      'optionalSubjects': instance.optionalSubjects,
      'curriculumUrl': instance.curriculumUrl,
    };

_$GraduateImpl _$$GraduateImplFromJson(Map<String, dynamic> json) =>
    _$GraduateImpl(
      name: json['name'] as String,
      date: json['date'] as String,
      company: Company.fromJson(json['company'] as Map<String, dynamic>),
      position: json['position'] as String,
      imageUrl: json['imageUrl'] as String?,
    );

Map<String, dynamic> _$$GraduateImplToJson(_$GraduateImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'date': instance.date,
      'company': instance.company,
      'position': instance.position,
      'imageUrl': instance.imageUrl,
    };

_$CompanyImpl _$$CompanyImplFromJson(Map<String, dynamic> json) =>
    _$CompanyImpl(
      name: json['name'] as String,
    );

Map<String, dynamic> _$$CompanyImplToJson(_$CompanyImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
    };
