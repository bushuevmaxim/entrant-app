// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'programm.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Programm _$ProgrammFromJson(Map<String, dynamic> json) {
  return _Programm.fromJson(json);
}

/// @nodoc
mixin _$Programm {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get code => throw _privateConstructorUsedError;
  String get educationLevel => throw _privateConstructorUsedError;
  List<Profile> get profiles => throw _privateConstructorUsedError;
  List<Exam> get requiredExams => throw _privateConstructorUsedError;
  List<Exam> get electiveExams => throw _privateConstructorUsedError;
  List<Company> get companies => throw _privateConstructorUsedError;
  List<Graduate> get graduates => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProgrammCopyWith<Programm> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProgrammCopyWith<$Res> {
  factory $ProgrammCopyWith(Programm value, $Res Function(Programm) then) =
      _$ProgrammCopyWithImpl<$Res, Programm>;
  @useResult
  $Res call(
      {String id,
      String name,
      String code,
      String educationLevel,
      List<Profile> profiles,
      List<Exam> requiredExams,
      List<Exam> electiveExams,
      List<Company> companies,
      List<Graduate> graduates});
}

/// @nodoc
class _$ProgrammCopyWithImpl<$Res, $Val extends Programm>
    implements $ProgrammCopyWith<$Res> {
  _$ProgrammCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? code = null,
    Object? educationLevel = null,
    Object? profiles = null,
    Object? requiredExams = null,
    Object? electiveExams = null,
    Object? companies = null,
    Object? graduates = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      educationLevel: null == educationLevel
          ? _value.educationLevel
          : educationLevel // ignore: cast_nullable_to_non_nullable
              as String,
      profiles: null == profiles
          ? _value.profiles
          : profiles // ignore: cast_nullable_to_non_nullable
              as List<Profile>,
      requiredExams: null == requiredExams
          ? _value.requiredExams
          : requiredExams // ignore: cast_nullable_to_non_nullable
              as List<Exam>,
      electiveExams: null == electiveExams
          ? _value.electiveExams
          : electiveExams // ignore: cast_nullable_to_non_nullable
              as List<Exam>,
      companies: null == companies
          ? _value.companies
          : companies // ignore: cast_nullable_to_non_nullable
              as List<Company>,
      graduates: null == graduates
          ? _value.graduates
          : graduates // ignore: cast_nullable_to_non_nullable
              as List<Graduate>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProgrammImplCopyWith<$Res>
    implements $ProgrammCopyWith<$Res> {
  factory _$$ProgrammImplCopyWith(
          _$ProgrammImpl value, $Res Function(_$ProgrammImpl) then) =
      __$$ProgrammImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String code,
      String educationLevel,
      List<Profile> profiles,
      List<Exam> requiredExams,
      List<Exam> electiveExams,
      List<Company> companies,
      List<Graduate> graduates});
}

/// @nodoc
class __$$ProgrammImplCopyWithImpl<$Res>
    extends _$ProgrammCopyWithImpl<$Res, _$ProgrammImpl>
    implements _$$ProgrammImplCopyWith<$Res> {
  __$$ProgrammImplCopyWithImpl(
      _$ProgrammImpl _value, $Res Function(_$ProgrammImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? code = null,
    Object? educationLevel = null,
    Object? profiles = null,
    Object? requiredExams = null,
    Object? electiveExams = null,
    Object? companies = null,
    Object? graduates = null,
  }) {
    return _then(_$ProgrammImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      educationLevel: null == educationLevel
          ? _value.educationLevel
          : educationLevel // ignore: cast_nullable_to_non_nullable
              as String,
      profiles: null == profiles
          ? _value._profiles
          : profiles // ignore: cast_nullable_to_non_nullable
              as List<Profile>,
      requiredExams: null == requiredExams
          ? _value._requiredExams
          : requiredExams // ignore: cast_nullable_to_non_nullable
              as List<Exam>,
      electiveExams: null == electiveExams
          ? _value._electiveExams
          : electiveExams // ignore: cast_nullable_to_non_nullable
              as List<Exam>,
      companies: null == companies
          ? _value._companies
          : companies // ignore: cast_nullable_to_non_nullable
              as List<Company>,
      graduates: null == graduates
          ? _value._graduates
          : graduates // ignore: cast_nullable_to_non_nullable
              as List<Graduate>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProgrammImpl implements _Programm {
  const _$ProgrammImpl(
      {required this.id,
      required this.name,
      required this.code,
      required this.educationLevel,
      required final List<Profile> profiles,
      required final List<Exam> requiredExams,
      required final List<Exam> electiveExams,
      required final List<Company> companies,
      required final List<Graduate> graduates})
      : _profiles = profiles,
        _requiredExams = requiredExams,
        _electiveExams = electiveExams,
        _companies = companies,
        _graduates = graduates;

  factory _$ProgrammImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProgrammImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String code;
  @override
  final String educationLevel;
  final List<Profile> _profiles;
  @override
  List<Profile> get profiles {
    if (_profiles is EqualUnmodifiableListView) return _profiles;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_profiles);
  }

  final List<Exam> _requiredExams;
  @override
  List<Exam> get requiredExams {
    if (_requiredExams is EqualUnmodifiableListView) return _requiredExams;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_requiredExams);
  }

  final List<Exam> _electiveExams;
  @override
  List<Exam> get electiveExams {
    if (_electiveExams is EqualUnmodifiableListView) return _electiveExams;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_electiveExams);
  }

  final List<Company> _companies;
  @override
  List<Company> get companies {
    if (_companies is EqualUnmodifiableListView) return _companies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_companies);
  }

  final List<Graduate> _graduates;
  @override
  List<Graduate> get graduates {
    if (_graduates is EqualUnmodifiableListView) return _graduates;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_graduates);
  }

  @override
  String toString() {
    return 'Programm(id: $id, name: $name, code: $code, educationLevel: $educationLevel, profiles: $profiles, requiredExams: $requiredExams, electiveExams: $electiveExams, companies: $companies, graduates: $graduates)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProgrammImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.educationLevel, educationLevel) ||
                other.educationLevel == educationLevel) &&
            const DeepCollectionEquality().equals(other._profiles, _profiles) &&
            const DeepCollectionEquality()
                .equals(other._requiredExams, _requiredExams) &&
            const DeepCollectionEquality()
                .equals(other._electiveExams, _electiveExams) &&
            const DeepCollectionEquality()
                .equals(other._companies, _companies) &&
            const DeepCollectionEquality()
                .equals(other._graduates, _graduates));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      code,
      educationLevel,
      const DeepCollectionEquality().hash(_profiles),
      const DeepCollectionEquality().hash(_requiredExams),
      const DeepCollectionEquality().hash(_electiveExams),
      const DeepCollectionEquality().hash(_companies),
      const DeepCollectionEquality().hash(_graduates));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProgrammImplCopyWith<_$ProgrammImpl> get copyWith =>
      __$$ProgrammImplCopyWithImpl<_$ProgrammImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProgrammImplToJson(
      this,
    );
  }
}

abstract class _Programm implements Programm {
  const factory _Programm(
      {required final String id,
      required final String name,
      required final String code,
      required final String educationLevel,
      required final List<Profile> profiles,
      required final List<Exam> requiredExams,
      required final List<Exam> electiveExams,
      required final List<Company> companies,
      required final List<Graduate> graduates}) = _$ProgrammImpl;

  factory _Programm.fromJson(Map<String, dynamic> json) =
      _$ProgrammImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get code;
  @override
  String get educationLevel;
  @override
  List<Profile> get profiles;
  @override
  List<Exam> get requiredExams;
  @override
  List<Exam> get electiveExams;
  @override
  List<Company> get companies;
  @override
  List<Graduate> get graduates;
  @override
  @JsonKey(ignore: true)
  _$$ProgrammImplCopyWith<_$ProgrammImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Profile _$ProfileFromJson(Map<String, dynamic> json) {
  return _Profile.fromJson(json);
}

/// @nodoc
mixin _$Profile {
  String get name => throw _privateConstructorUsedError;
  List<ProfileStudyForm> get studyForms => throw _privateConstructorUsedError;
  List<ProfileCourse> get courses => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProfileCopyWith<Profile> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileCopyWith<$Res> {
  factory $ProfileCopyWith(Profile value, $Res Function(Profile) then) =
      _$ProfileCopyWithImpl<$Res, Profile>;
  @useResult
  $Res call(
      {String name,
      List<ProfileStudyForm> studyForms,
      List<ProfileCourse> courses});
}

/// @nodoc
class _$ProfileCopyWithImpl<$Res, $Val extends Profile>
    implements $ProfileCopyWith<$Res> {
  _$ProfileCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? studyForms = null,
    Object? courses = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      studyForms: null == studyForms
          ? _value.studyForms
          : studyForms // ignore: cast_nullable_to_non_nullable
              as List<ProfileStudyForm>,
      courses: null == courses
          ? _value.courses
          : courses // ignore: cast_nullable_to_non_nullable
              as List<ProfileCourse>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProfileImplCopyWith<$Res> implements $ProfileCopyWith<$Res> {
  factory _$$ProfileImplCopyWith(
          _$ProfileImpl value, $Res Function(_$ProfileImpl) then) =
      __$$ProfileImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      List<ProfileStudyForm> studyForms,
      List<ProfileCourse> courses});
}

/// @nodoc
class __$$ProfileImplCopyWithImpl<$Res>
    extends _$ProfileCopyWithImpl<$Res, _$ProfileImpl>
    implements _$$ProfileImplCopyWith<$Res> {
  __$$ProfileImplCopyWithImpl(
      _$ProfileImpl _value, $Res Function(_$ProfileImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? studyForms = null,
    Object? courses = null,
  }) {
    return _then(_$ProfileImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      studyForms: null == studyForms
          ? _value._studyForms
          : studyForms // ignore: cast_nullable_to_non_nullable
              as List<ProfileStudyForm>,
      courses: null == courses
          ? _value._courses
          : courses // ignore: cast_nullable_to_non_nullable
              as List<ProfileCourse>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProfileImpl implements _Profile {
  const _$ProfileImpl(
      {required this.name,
      required final List<ProfileStudyForm> studyForms,
      required final List<ProfileCourse> courses})
      : _studyForms = studyForms,
        _courses = courses;

  factory _$ProfileImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProfileImplFromJson(json);

  @override
  final String name;
  final List<ProfileStudyForm> _studyForms;
  @override
  List<ProfileStudyForm> get studyForms {
    if (_studyForms is EqualUnmodifiableListView) return _studyForms;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_studyForms);
  }

  final List<ProfileCourse> _courses;
  @override
  List<ProfileCourse> get courses {
    if (_courses is EqualUnmodifiableListView) return _courses;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_courses);
  }

  @override
  String toString() {
    return 'Profile(name: $name, studyForms: $studyForms, courses: $courses)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileImpl &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality()
                .equals(other._studyForms, _studyForms) &&
            const DeepCollectionEquality().equals(other._courses, _courses));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      const DeepCollectionEquality().hash(_studyForms),
      const DeepCollectionEquality().hash(_courses));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileImplCopyWith<_$ProfileImpl> get copyWith =>
      __$$ProfileImplCopyWithImpl<_$ProfileImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProfileImplToJson(
      this,
    );
  }
}

abstract class _Profile implements Profile {
  const factory _Profile(
      {required final String name,
      required final List<ProfileStudyForm> studyForms,
      required final List<ProfileCourse> courses}) = _$ProfileImpl;

  factory _Profile.fromJson(Map<String, dynamic> json) = _$ProfileImpl.fromJson;

  @override
  String get name;
  @override
  List<ProfileStudyForm> get studyForms;
  @override
  List<ProfileCourse> get courses;
  @override
  @JsonKey(ignore: true)
  _$$ProfileImplCopyWith<_$ProfileImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ProfileCourse _$ProfileCourseFromJson(Map<String, dynamic> json) {
  return _ProfileCourse.fromJson(json);
}

/// @nodoc
mixin _$ProfileCourse {
  List<Discipline> get disciplines => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProfileCourseCopyWith<ProfileCourse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileCourseCopyWith<$Res> {
  factory $ProfileCourseCopyWith(
          ProfileCourse value, $Res Function(ProfileCourse) then) =
      _$ProfileCourseCopyWithImpl<$Res, ProfileCourse>;
  @useResult
  $Res call({List<Discipline> disciplines});
}

/// @nodoc
class _$ProfileCourseCopyWithImpl<$Res, $Val extends ProfileCourse>
    implements $ProfileCourseCopyWith<$Res> {
  _$ProfileCourseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? disciplines = null,
  }) {
    return _then(_value.copyWith(
      disciplines: null == disciplines
          ? _value.disciplines
          : disciplines // ignore: cast_nullable_to_non_nullable
              as List<Discipline>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProfileCourseImplCopyWith<$Res>
    implements $ProfileCourseCopyWith<$Res> {
  factory _$$ProfileCourseImplCopyWith(
          _$ProfileCourseImpl value, $Res Function(_$ProfileCourseImpl) then) =
      __$$ProfileCourseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Discipline> disciplines});
}

/// @nodoc
class __$$ProfileCourseImplCopyWithImpl<$Res>
    extends _$ProfileCourseCopyWithImpl<$Res, _$ProfileCourseImpl>
    implements _$$ProfileCourseImplCopyWith<$Res> {
  __$$ProfileCourseImplCopyWithImpl(
      _$ProfileCourseImpl _value, $Res Function(_$ProfileCourseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? disciplines = null,
  }) {
    return _then(_$ProfileCourseImpl(
      disciplines: null == disciplines
          ? _value._disciplines
          : disciplines // ignore: cast_nullable_to_non_nullable
              as List<Discipline>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProfileCourseImpl implements _ProfileCourse {
  const _$ProfileCourseImpl({required final List<Discipline> disciplines})
      : _disciplines = disciplines;

  factory _$ProfileCourseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProfileCourseImplFromJson(json);

  final List<Discipline> _disciplines;
  @override
  List<Discipline> get disciplines {
    if (_disciplines is EqualUnmodifiableListView) return _disciplines;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_disciplines);
  }

  @override
  String toString() {
    return 'ProfileCourse(disciplines: $disciplines)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileCourseImpl &&
            const DeepCollectionEquality()
                .equals(other._disciplines, _disciplines));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_disciplines));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileCourseImplCopyWith<_$ProfileCourseImpl> get copyWith =>
      __$$ProfileCourseImplCopyWithImpl<_$ProfileCourseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProfileCourseImplToJson(
      this,
    );
  }
}

abstract class _ProfileCourse implements ProfileCourse {
  const factory _ProfileCourse({required final List<Discipline> disciplines}) =
      _$ProfileCourseImpl;

  factory _ProfileCourse.fromJson(Map<String, dynamic> json) =
      _$ProfileCourseImpl.fromJson;

  @override
  List<Discipline> get disciplines;
  @override
  @JsonKey(ignore: true)
  _$$ProfileCourseImplCopyWith<_$ProfileCourseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Discipline _$DisciplineFromJson(Map<String, dynamic> json) {
  return _Discipline.fromJson(json);
}

/// @nodoc
mixin _$Discipline {
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DisciplineCopyWith<Discipline> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DisciplineCopyWith<$Res> {
  factory $DisciplineCopyWith(
          Discipline value, $Res Function(Discipline) then) =
      _$DisciplineCopyWithImpl<$Res, Discipline>;
  @useResult
  $Res call({String name});
}

/// @nodoc
class _$DisciplineCopyWithImpl<$Res, $Val extends Discipline>
    implements $DisciplineCopyWith<$Res> {
  _$DisciplineCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DisciplineImplCopyWith<$Res>
    implements $DisciplineCopyWith<$Res> {
  factory _$$DisciplineImplCopyWith(
          _$DisciplineImpl value, $Res Function(_$DisciplineImpl) then) =
      __$$DisciplineImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$$DisciplineImplCopyWithImpl<$Res>
    extends _$DisciplineCopyWithImpl<$Res, _$DisciplineImpl>
    implements _$$DisciplineImplCopyWith<$Res> {
  __$$DisciplineImplCopyWithImpl(
      _$DisciplineImpl _value, $Res Function(_$DisciplineImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$DisciplineImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DisciplineImpl implements _Discipline {
  const _$DisciplineImpl({required this.name});

  factory _$DisciplineImpl.fromJson(Map<String, dynamic> json) =>
      _$$DisciplineImplFromJson(json);

  @override
  final String name;

  @override
  String toString() {
    return 'Discipline(name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DisciplineImpl &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DisciplineImplCopyWith<_$DisciplineImpl> get copyWith =>
      __$$DisciplineImplCopyWithImpl<_$DisciplineImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DisciplineImplToJson(
      this,
    );
  }
}

abstract class _Discipline implements Discipline {
  const factory _Discipline({required final String name}) = _$DisciplineImpl;

  factory _Discipline.fromJson(Map<String, dynamic> json) =
      _$DisciplineImpl.fromJson;

  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$DisciplineImplCopyWith<_$DisciplineImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ProfileStudyForm _$ProfileStudyFormFromJson(Map<String, dynamic> json) {
  return _ProfileStudyForm.fromJson(json);
}

/// @nodoc
mixin _$ProfileStudyForm {
  StudyForm get studyForm => throw _privateConstructorUsedError;
  int get year => throw _privateConstructorUsedError;
  int? get nPlacesBudget => throw _privateConstructorUsedError;
  int? get nPlacesPaid => throw _privateConstructorUsedError;
  int? get costPerYear => throw _privateConstructorUsedError;
  int? get passingScoreBudget => throw _privateConstructorUsedError;
  int? get passingScorePaid => throw _privateConstructorUsedError;
  int? get minScorePaid => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProfileStudyFormCopyWith<ProfileStudyForm> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileStudyFormCopyWith<$Res> {
  factory $ProfileStudyFormCopyWith(
          ProfileStudyForm value, $Res Function(ProfileStudyForm) then) =
      _$ProfileStudyFormCopyWithImpl<$Res, ProfileStudyForm>;
  @useResult
  $Res call(
      {StudyForm studyForm,
      int year,
      int? nPlacesBudget,
      int? nPlacesPaid,
      int? costPerYear,
      int? passingScoreBudget,
      int? passingScorePaid,
      int? minScorePaid});

  $StudyFormCopyWith<$Res> get studyForm;
}

/// @nodoc
class _$ProfileStudyFormCopyWithImpl<$Res, $Val extends ProfileStudyForm>
    implements $ProfileStudyFormCopyWith<$Res> {
  _$ProfileStudyFormCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? studyForm = null,
    Object? year = null,
    Object? nPlacesBudget = freezed,
    Object? nPlacesPaid = freezed,
    Object? costPerYear = freezed,
    Object? passingScoreBudget = freezed,
    Object? passingScorePaid = freezed,
    Object? minScorePaid = freezed,
  }) {
    return _then(_value.copyWith(
      studyForm: null == studyForm
          ? _value.studyForm
          : studyForm // ignore: cast_nullable_to_non_nullable
              as StudyForm,
      year: null == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as int,
      nPlacesBudget: freezed == nPlacesBudget
          ? _value.nPlacesBudget
          : nPlacesBudget // ignore: cast_nullable_to_non_nullable
              as int?,
      nPlacesPaid: freezed == nPlacesPaid
          ? _value.nPlacesPaid
          : nPlacesPaid // ignore: cast_nullable_to_non_nullable
              as int?,
      costPerYear: freezed == costPerYear
          ? _value.costPerYear
          : costPerYear // ignore: cast_nullable_to_non_nullable
              as int?,
      passingScoreBudget: freezed == passingScoreBudget
          ? _value.passingScoreBudget
          : passingScoreBudget // ignore: cast_nullable_to_non_nullable
              as int?,
      passingScorePaid: freezed == passingScorePaid
          ? _value.passingScorePaid
          : passingScorePaid // ignore: cast_nullable_to_non_nullable
              as int?,
      minScorePaid: freezed == minScorePaid
          ? _value.minScorePaid
          : minScorePaid // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $StudyFormCopyWith<$Res> get studyForm {
    return $StudyFormCopyWith<$Res>(_value.studyForm, (value) {
      return _then(_value.copyWith(studyForm: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProfileStudyFormImplCopyWith<$Res>
    implements $ProfileStudyFormCopyWith<$Res> {
  factory _$$ProfileStudyFormImplCopyWith(_$ProfileStudyFormImpl value,
          $Res Function(_$ProfileStudyFormImpl) then) =
      __$$ProfileStudyFormImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {StudyForm studyForm,
      int year,
      int? nPlacesBudget,
      int? nPlacesPaid,
      int? costPerYear,
      int? passingScoreBudget,
      int? passingScorePaid,
      int? minScorePaid});

  @override
  $StudyFormCopyWith<$Res> get studyForm;
}

/// @nodoc
class __$$ProfileStudyFormImplCopyWithImpl<$Res>
    extends _$ProfileStudyFormCopyWithImpl<$Res, _$ProfileStudyFormImpl>
    implements _$$ProfileStudyFormImplCopyWith<$Res> {
  __$$ProfileStudyFormImplCopyWithImpl(_$ProfileStudyFormImpl _value,
      $Res Function(_$ProfileStudyFormImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? studyForm = null,
    Object? year = null,
    Object? nPlacesBudget = freezed,
    Object? nPlacesPaid = freezed,
    Object? costPerYear = freezed,
    Object? passingScoreBudget = freezed,
    Object? passingScorePaid = freezed,
    Object? minScorePaid = freezed,
  }) {
    return _then(_$ProfileStudyFormImpl(
      studyForm: null == studyForm
          ? _value.studyForm
          : studyForm // ignore: cast_nullable_to_non_nullable
              as StudyForm,
      year: null == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as int,
      nPlacesBudget: freezed == nPlacesBudget
          ? _value.nPlacesBudget
          : nPlacesBudget // ignore: cast_nullable_to_non_nullable
              as int?,
      nPlacesPaid: freezed == nPlacesPaid
          ? _value.nPlacesPaid
          : nPlacesPaid // ignore: cast_nullable_to_non_nullable
              as int?,
      costPerYear: freezed == costPerYear
          ? _value.costPerYear
          : costPerYear // ignore: cast_nullable_to_non_nullable
              as int?,
      passingScoreBudget: freezed == passingScoreBudget
          ? _value.passingScoreBudget
          : passingScoreBudget // ignore: cast_nullable_to_non_nullable
              as int?,
      passingScorePaid: freezed == passingScorePaid
          ? _value.passingScorePaid
          : passingScorePaid // ignore: cast_nullable_to_non_nullable
              as int?,
      minScorePaid: freezed == minScorePaid
          ? _value.minScorePaid
          : minScorePaid // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProfileStudyFormImpl implements _ProfileStudyForm {
  const _$ProfileStudyFormImpl(
      {required this.studyForm,
      required this.year,
      this.nPlacesBudget,
      this.nPlacesPaid,
      this.costPerYear,
      this.passingScoreBudget,
      this.passingScorePaid,
      this.minScorePaid});

  factory _$ProfileStudyFormImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProfileStudyFormImplFromJson(json);

  @override
  final StudyForm studyForm;
  @override
  final int year;
  @override
  final int? nPlacesBudget;
  @override
  final int? nPlacesPaid;
  @override
  final int? costPerYear;
  @override
  final int? passingScoreBudget;
  @override
  final int? passingScorePaid;
  @override
  final int? minScorePaid;

  @override
  String toString() {
    return 'ProfileStudyForm(studyForm: $studyForm, year: $year, nPlacesBudget: $nPlacesBudget, nPlacesPaid: $nPlacesPaid, costPerYear: $costPerYear, passingScoreBudget: $passingScoreBudget, passingScorePaid: $passingScorePaid, minScorePaid: $minScorePaid)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileStudyFormImpl &&
            (identical(other.studyForm, studyForm) ||
                other.studyForm == studyForm) &&
            (identical(other.year, year) || other.year == year) &&
            (identical(other.nPlacesBudget, nPlacesBudget) ||
                other.nPlacesBudget == nPlacesBudget) &&
            (identical(other.nPlacesPaid, nPlacesPaid) ||
                other.nPlacesPaid == nPlacesPaid) &&
            (identical(other.costPerYear, costPerYear) ||
                other.costPerYear == costPerYear) &&
            (identical(other.passingScoreBudget, passingScoreBudget) ||
                other.passingScoreBudget == passingScoreBudget) &&
            (identical(other.passingScorePaid, passingScorePaid) ||
                other.passingScorePaid == passingScorePaid) &&
            (identical(other.minScorePaid, minScorePaid) ||
                other.minScorePaid == minScorePaid));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      studyForm,
      year,
      nPlacesBudget,
      nPlacesPaid,
      costPerYear,
      passingScoreBudget,
      passingScorePaid,
      minScorePaid);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileStudyFormImplCopyWith<_$ProfileStudyFormImpl> get copyWith =>
      __$$ProfileStudyFormImplCopyWithImpl<_$ProfileStudyFormImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProfileStudyFormImplToJson(
      this,
    );
  }
}

abstract class _ProfileStudyForm implements ProfileStudyForm {
  const factory _ProfileStudyForm(
      {required final StudyForm studyForm,
      required final int year,
      final int? nPlacesBudget,
      final int? nPlacesPaid,
      final int? costPerYear,
      final int? passingScoreBudget,
      final int? passingScorePaid,
      final int? minScorePaid}) = _$ProfileStudyFormImpl;

  factory _ProfileStudyForm.fromJson(Map<String, dynamic> json) =
      _$ProfileStudyFormImpl.fromJson;

  @override
  StudyForm get studyForm;
  @override
  int get year;
  @override
  int? get nPlacesBudget;
  @override
  int? get nPlacesPaid;
  @override
  int? get costPerYear;
  @override
  int? get passingScoreBudget;
  @override
  int? get passingScorePaid;
  @override
  int? get minScorePaid;
  @override
  @JsonKey(ignore: true)
  _$$ProfileStudyFormImplCopyWith<_$ProfileStudyFormImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

StudyForm _$StudyFormFromJson(Map<String, dynamic> json) {
  return _StudyForm.fromJson(json);
}

/// @nodoc
mixin _$StudyForm {
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StudyFormCopyWith<StudyForm> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StudyFormCopyWith<$Res> {
  factory $StudyFormCopyWith(StudyForm value, $Res Function(StudyForm) then) =
      _$StudyFormCopyWithImpl<$Res, StudyForm>;
  @useResult
  $Res call({String name});
}

/// @nodoc
class _$StudyFormCopyWithImpl<$Res, $Val extends StudyForm>
    implements $StudyFormCopyWith<$Res> {
  _$StudyFormCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StudyFormImplCopyWith<$Res>
    implements $StudyFormCopyWith<$Res> {
  factory _$$StudyFormImplCopyWith(
          _$StudyFormImpl value, $Res Function(_$StudyFormImpl) then) =
      __$$StudyFormImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$$StudyFormImplCopyWithImpl<$Res>
    extends _$StudyFormCopyWithImpl<$Res, _$StudyFormImpl>
    implements _$$StudyFormImplCopyWith<$Res> {
  __$$StudyFormImplCopyWithImpl(
      _$StudyFormImpl _value, $Res Function(_$StudyFormImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$StudyFormImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StudyFormImpl implements _StudyForm {
  const _$StudyFormImpl({required this.name});

  factory _$StudyFormImpl.fromJson(Map<String, dynamic> json) =>
      _$$StudyFormImplFromJson(json);

  @override
  final String name;

  @override
  String toString() {
    return 'StudyForm(name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StudyFormImpl &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StudyFormImplCopyWith<_$StudyFormImpl> get copyWith =>
      __$$StudyFormImplCopyWithImpl<_$StudyFormImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StudyFormImplToJson(
      this,
    );
  }
}

abstract class _StudyForm implements StudyForm {
  const factory _StudyForm({required final String name}) = _$StudyFormImpl;

  factory _StudyForm.fromJson(Map<String, dynamic> json) =
      _$StudyFormImpl.fromJson;

  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$StudyFormImplCopyWith<_$StudyFormImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Exam _$ExamFromJson(Map<String, dynamic> json) {
  return _Exam.fromJson(json);
}

/// @nodoc
mixin _$Exam {
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ExamCopyWith<Exam> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExamCopyWith<$Res> {
  factory $ExamCopyWith(Exam value, $Res Function(Exam) then) =
      _$ExamCopyWithImpl<$Res, Exam>;
  @useResult
  $Res call({String name});
}

/// @nodoc
class _$ExamCopyWithImpl<$Res, $Val extends Exam>
    implements $ExamCopyWith<$Res> {
  _$ExamCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ExamImplCopyWith<$Res> implements $ExamCopyWith<$Res> {
  factory _$$ExamImplCopyWith(
          _$ExamImpl value, $Res Function(_$ExamImpl) then) =
      __$$ExamImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$$ExamImplCopyWithImpl<$Res>
    extends _$ExamCopyWithImpl<$Res, _$ExamImpl>
    implements _$$ExamImplCopyWith<$Res> {
  __$$ExamImplCopyWithImpl(_$ExamImpl _value, $Res Function(_$ExamImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$ExamImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ExamImpl implements _Exam {
  const _$ExamImpl({required this.name});

  factory _$ExamImpl.fromJson(Map<String, dynamic> json) =>
      _$$ExamImplFromJson(json);

  @override
  final String name;

  @override
  String toString() {
    return 'Exam(name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExamImpl &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ExamImplCopyWith<_$ExamImpl> get copyWith =>
      __$$ExamImplCopyWithImpl<_$ExamImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ExamImplToJson(
      this,
    );
  }
}

abstract class _Exam implements Exam {
  const factory _Exam({required final String name}) = _$ExamImpl;

  factory _Exam.fromJson(Map<String, dynamic> json) = _$ExamImpl.fromJson;

  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$ExamImplCopyWith<_$ExamImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Company _$CompanyFromJson(Map<String, dynamic> json) {
  return _Company.fromJson(json);
}

/// @nodoc
mixin _$Company {
  String get name => throw _privateConstructorUsedError;
  String? get logo => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CompanyCopyWith<Company> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CompanyCopyWith<$Res> {
  factory $CompanyCopyWith(Company value, $Res Function(Company) then) =
      _$CompanyCopyWithImpl<$Res, Company>;
  @useResult
  $Res call({String name, String? logo});
}

/// @nodoc
class _$CompanyCopyWithImpl<$Res, $Val extends Company>
    implements $CompanyCopyWith<$Res> {
  _$CompanyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? logo = freezed,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      logo: freezed == logo
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CompanyImplCopyWith<$Res> implements $CompanyCopyWith<$Res> {
  factory _$$CompanyImplCopyWith(
          _$CompanyImpl value, $Res Function(_$CompanyImpl) then) =
      __$$CompanyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String? logo});
}

/// @nodoc
class __$$CompanyImplCopyWithImpl<$Res>
    extends _$CompanyCopyWithImpl<$Res, _$CompanyImpl>
    implements _$$CompanyImplCopyWith<$Res> {
  __$$CompanyImplCopyWithImpl(
      _$CompanyImpl _value, $Res Function(_$CompanyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? logo = freezed,
  }) {
    return _then(_$CompanyImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      logo: freezed == logo
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CompanyImpl implements _Company {
  const _$CompanyImpl({required this.name, this.logo});

  factory _$CompanyImpl.fromJson(Map<String, dynamic> json) =>
      _$$CompanyImplFromJson(json);

  @override
  final String name;
  @override
  final String? logo;

  @override
  String toString() {
    return 'Company(name: $name, logo: $logo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CompanyImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.logo, logo) || other.logo == logo));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, logo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CompanyImplCopyWith<_$CompanyImpl> get copyWith =>
      __$$CompanyImplCopyWithImpl<_$CompanyImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CompanyImplToJson(
      this,
    );
  }
}

abstract class _Company implements Company {
  const factory _Company({required final String name, final String? logo}) =
      _$CompanyImpl;

  factory _Company.fromJson(Map<String, dynamic> json) = _$CompanyImpl.fromJson;

  @override
  String get name;
  @override
  String? get logo;
  @override
  @JsonKey(ignore: true)
  _$$CompanyImplCopyWith<_$CompanyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Graduate _$GraduateFromJson(Map<String, dynamic> json) {
  return _Graduate.fromJson(json);
}

/// @nodoc
mixin _$Graduate {
  String get firstName => throw _privateConstructorUsedError;
  String get secondName => throw _privateConstructorUsedError;
  String get role => throw _privateConstructorUsedError;
  String get companyName => throw _privateConstructorUsedError;
  String? get photo => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GraduateCopyWith<Graduate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GraduateCopyWith<$Res> {
  factory $GraduateCopyWith(Graduate value, $Res Function(Graduate) then) =
      _$GraduateCopyWithImpl<$Res, Graduate>;
  @useResult
  $Res call(
      {String firstName,
      String secondName,
      String role,
      String companyName,
      String? photo});
}

/// @nodoc
class _$GraduateCopyWithImpl<$Res, $Val extends Graduate>
    implements $GraduateCopyWith<$Res> {
  _$GraduateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = null,
    Object? secondName = null,
    Object? role = null,
    Object? companyName = null,
    Object? photo = freezed,
  }) {
    return _then(_value.copyWith(
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      secondName: null == secondName
          ? _value.secondName
          : secondName // ignore: cast_nullable_to_non_nullable
              as String,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
      companyName: null == companyName
          ? _value.companyName
          : companyName // ignore: cast_nullable_to_non_nullable
              as String,
      photo: freezed == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GraduateImplCopyWith<$Res>
    implements $GraduateCopyWith<$Res> {
  factory _$$GraduateImplCopyWith(
          _$GraduateImpl value, $Res Function(_$GraduateImpl) then) =
      __$$GraduateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String firstName,
      String secondName,
      String role,
      String companyName,
      String? photo});
}

/// @nodoc
class __$$GraduateImplCopyWithImpl<$Res>
    extends _$GraduateCopyWithImpl<$Res, _$GraduateImpl>
    implements _$$GraduateImplCopyWith<$Res> {
  __$$GraduateImplCopyWithImpl(
      _$GraduateImpl _value, $Res Function(_$GraduateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = null,
    Object? secondName = null,
    Object? role = null,
    Object? companyName = null,
    Object? photo = freezed,
  }) {
    return _then(_$GraduateImpl(
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      secondName: null == secondName
          ? _value.secondName
          : secondName // ignore: cast_nullable_to_non_nullable
              as String,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
      companyName: null == companyName
          ? _value.companyName
          : companyName // ignore: cast_nullable_to_non_nullable
              as String,
      photo: freezed == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GraduateImpl implements _Graduate {
  const _$GraduateImpl(
      {required this.firstName,
      required this.secondName,
      required this.role,
      required this.companyName,
      this.photo});

  factory _$GraduateImpl.fromJson(Map<String, dynamic> json) =>
      _$$GraduateImplFromJson(json);

  @override
  final String firstName;
  @override
  final String secondName;
  @override
  final String role;
  @override
  final String companyName;
  @override
  final String? photo;

  @override
  String toString() {
    return 'Graduate(firstName: $firstName, secondName: $secondName, role: $role, companyName: $companyName, photo: $photo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GraduateImpl &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.secondName, secondName) ||
                other.secondName == secondName) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.companyName, companyName) ||
                other.companyName == companyName) &&
            (identical(other.photo, photo) || other.photo == photo));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, firstName, secondName, role, companyName, photo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GraduateImplCopyWith<_$GraduateImpl> get copyWith =>
      __$$GraduateImplCopyWithImpl<_$GraduateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GraduateImplToJson(
      this,
    );
  }
}

abstract class _Graduate implements Graduate {
  const factory _Graduate(
      {required final String firstName,
      required final String secondName,
      required final String role,
      required final String companyName,
      final String? photo}) = _$GraduateImpl;

  factory _Graduate.fromJson(Map<String, dynamic> json) =
      _$GraduateImpl.fromJson;

  @override
  String get firstName;
  @override
  String get secondName;
  @override
  String get role;
  @override
  String get companyName;
  @override
  String? get photo;
  @override
  @JsonKey(ignore: true)
  _$$GraduateImplCopyWith<_$GraduateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
