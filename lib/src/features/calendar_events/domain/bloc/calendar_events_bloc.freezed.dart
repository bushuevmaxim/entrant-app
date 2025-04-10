// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'calendar_events_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CalendarEventsState {
  Map<DateTime, List<Event>> get events => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CalendarEventsStateCopyWith<CalendarEventsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CalendarEventsStateCopyWith<$Res> {
  factory $CalendarEventsStateCopyWith(
          CalendarEventsState value, $Res Function(CalendarEventsState) then) =
      _$CalendarEventsStateCopyWithImpl<$Res, CalendarEventsState>;
  @useResult
  $Res call({Map<DateTime, List<Event>> events, bool isLoading, String? error});
}

/// @nodoc
class _$CalendarEventsStateCopyWithImpl<$Res, $Val extends CalendarEventsState>
    implements $CalendarEventsStateCopyWith<$Res> {
  _$CalendarEventsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? events = null,
    Object? isLoading = null,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      events: null == events
          ? _value.events
          : events // ignore: cast_nullable_to_non_nullable
              as Map<DateTime, List<Event>>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CalendarEventsStateImplCopyWith<$Res>
    implements $CalendarEventsStateCopyWith<$Res> {
  factory _$$CalendarEventsStateImplCopyWith(_$CalendarEventsStateImpl value,
          $Res Function(_$CalendarEventsStateImpl) then) =
      __$$CalendarEventsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Map<DateTime, List<Event>> events, bool isLoading, String? error});
}

/// @nodoc
class __$$CalendarEventsStateImplCopyWithImpl<$Res>
    extends _$CalendarEventsStateCopyWithImpl<$Res, _$CalendarEventsStateImpl>
    implements _$$CalendarEventsStateImplCopyWith<$Res> {
  __$$CalendarEventsStateImplCopyWithImpl(_$CalendarEventsStateImpl _value,
      $Res Function(_$CalendarEventsStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? events = null,
    Object? isLoading = null,
    Object? error = freezed,
  }) {
    return _then(_$CalendarEventsStateImpl(
      events: null == events
          ? _value._events
          : events // ignore: cast_nullable_to_non_nullable
              as Map<DateTime, List<Event>>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$CalendarEventsStateImpl implements _CalendarEventsState {
  const _$CalendarEventsStateImpl(
      {final Map<DateTime, List<Event>> events = const {},
      this.isLoading = false,
      this.error})
      : _events = events;

  final Map<DateTime, List<Event>> _events;
  @override
  @JsonKey()
  Map<DateTime, List<Event>> get events {
    if (_events is EqualUnmodifiableMapView) return _events;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_events);
  }

  @override
  @JsonKey()
  final bool isLoading;
  @override
  final String? error;

  @override
  String toString() {
    return 'CalendarEventsState(events: $events, isLoading: $isLoading, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CalendarEventsStateImpl &&
            const DeepCollectionEquality().equals(other._events, _events) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_events), isLoading, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CalendarEventsStateImplCopyWith<_$CalendarEventsStateImpl> get copyWith =>
      __$$CalendarEventsStateImplCopyWithImpl<_$CalendarEventsStateImpl>(
          this, _$identity);
}

abstract class _CalendarEventsState implements CalendarEventsState {
  const factory _CalendarEventsState(
      {final Map<DateTime, List<Event>> events,
      final bool isLoading,
      final String? error}) = _$CalendarEventsStateImpl;

  @override
  Map<DateTime, List<Event>> get events;
  @override
  bool get isLoading;
  @override
  String? get error;
  @override
  @JsonKey(ignore: true)
  _$$CalendarEventsStateImplCopyWith<_$CalendarEventsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CalendarEventsEvent {
  DateTime get selectedMonth => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime selectedMonth) loadEvents,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DateTime selectedMonth)? loadEvents,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime selectedMonth)? loadEvents,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadEvents value) loadEvents,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadEvents value)? loadEvents,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadEvents value)? loadEvents,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CalendarEventsEventCopyWith<CalendarEventsEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CalendarEventsEventCopyWith<$Res> {
  factory $CalendarEventsEventCopyWith(
          CalendarEventsEvent value, $Res Function(CalendarEventsEvent) then) =
      _$CalendarEventsEventCopyWithImpl<$Res, CalendarEventsEvent>;
  @useResult
  $Res call({DateTime selectedMonth});
}

/// @nodoc
class _$CalendarEventsEventCopyWithImpl<$Res, $Val extends CalendarEventsEvent>
    implements $CalendarEventsEventCopyWith<$Res> {
  _$CalendarEventsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedMonth = null,
  }) {
    return _then(_value.copyWith(
      selectedMonth: null == selectedMonth
          ? _value.selectedMonth
          : selectedMonth // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LoadEventsImplCopyWith<$Res>
    implements $CalendarEventsEventCopyWith<$Res> {
  factory _$$LoadEventsImplCopyWith(
          _$LoadEventsImpl value, $Res Function(_$LoadEventsImpl) then) =
      __$$LoadEventsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DateTime selectedMonth});
}

/// @nodoc
class __$$LoadEventsImplCopyWithImpl<$Res>
    extends _$CalendarEventsEventCopyWithImpl<$Res, _$LoadEventsImpl>
    implements _$$LoadEventsImplCopyWith<$Res> {
  __$$LoadEventsImplCopyWithImpl(
      _$LoadEventsImpl _value, $Res Function(_$LoadEventsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedMonth = null,
  }) {
    return _then(_$LoadEventsImpl(
      selectedMonth: null == selectedMonth
          ? _value.selectedMonth
          : selectedMonth // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$LoadEventsImpl implements _LoadEvents {
  const _$LoadEventsImpl({required this.selectedMonth});

  @override
  final DateTime selectedMonth;

  @override
  String toString() {
    return 'CalendarEventsEvent.loadEvents(selectedMonth: $selectedMonth)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadEventsImpl &&
            (identical(other.selectedMonth, selectedMonth) ||
                other.selectedMonth == selectedMonth));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectedMonth);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadEventsImplCopyWith<_$LoadEventsImpl> get copyWith =>
      __$$LoadEventsImplCopyWithImpl<_$LoadEventsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime selectedMonth) loadEvents,
  }) {
    return loadEvents(selectedMonth);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DateTime selectedMonth)? loadEvents,
  }) {
    return loadEvents?.call(selectedMonth);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime selectedMonth)? loadEvents,
    required TResult orElse(),
  }) {
    if (loadEvents != null) {
      return loadEvents(selectedMonth);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadEvents value) loadEvents,
  }) {
    return loadEvents(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadEvents value)? loadEvents,
  }) {
    return loadEvents?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadEvents value)? loadEvents,
    required TResult orElse(),
  }) {
    if (loadEvents != null) {
      return loadEvents(this);
    }
    return orElse();
  }
}

abstract class _LoadEvents implements CalendarEventsEvent {
  const factory _LoadEvents({required final DateTime selectedMonth}) =
      _$LoadEventsImpl;

  @override
  DateTime get selectedMonth;
  @override
  @JsonKey(ignore: true)
  _$$LoadEventsImplCopyWith<_$LoadEventsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
