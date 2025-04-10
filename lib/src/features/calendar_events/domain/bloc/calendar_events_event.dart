part of 'calendar_events_bloc.dart';

@freezed
class CalendarEventsEvent with _$CalendarEventsEvent {
  const factory CalendarEventsEvent.loadEvents({
    required DateTime selectedMonth,
  }) = _LoadEvents;
}