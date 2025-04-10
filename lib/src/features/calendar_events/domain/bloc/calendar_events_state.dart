part of 'calendar_events_bloc.dart';

@freezed
class CalendarEventsState with _$CalendarEventsState {
  const factory CalendarEventsState({
    @Default({}) Map<DateTime, List<Event>> events,
    @Default(false) bool isLoading,
    String? error,
  }) = _CalendarEventsState;
}