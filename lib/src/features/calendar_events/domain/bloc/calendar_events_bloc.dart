import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rxdart/rxdart.dart';
import '../models/event.dart';
import '../repositories/events_repository.dart';

part 'calendar_events_bloc.freezed.dart';
part 'calendar_events_state.dart';
part 'calendar_events_event.dart';

class CalendarEventsBloc
    extends Bloc<CalendarEventsEvent, CalendarEventsState> {
  final IEventsRepository _eventsRepository;
  final Set<DateTime> _loadedMonths = {};

  CalendarEventsBloc({required IEventsRepository eventsRepository})
      : _eventsRepository = eventsRepository,
        super(const CalendarEventsState(isLoading: true)) {
    on<_LoadEvents>(
      _onLoadEvents,
      transformer: (events, mapper) => events
          .debounceTime(const Duration(milliseconds: 300))
          .switchMap(mapper),
    );
  }

  Future<void> _onLoadEvents(
    _LoadEvents event,
    Emitter<CalendarEventsState> emit,
  ) async {
    try {
      final selectedMonth =
          DateTime(event.selectedMonth.year, event.selectedMonth.month);

      if (_loadedMonths.contains(selectedMonth)) {
        return;
      }

      emit(state.copyWith(isLoading: true));

      final startDate =
          DateTime(event.selectedMonth.year, event.selectedMonth.month, 1);
      final endDate =
          DateTime(event.selectedMonth.year, event.selectedMonth.month + 1, 0);

      final events = await _eventsRepository.getEventsBetweenDates(
        startDate: startDate,
        endDate: endDate,
      );

      final updatedEvents = Map<DateTime, List<Event>>.from(state.events);
      for (final event in events) {
        final date =
            DateTime(event.date.year, event.date.month, event.date.day);
        updatedEvents.putIfAbsent(date, () => []).add(event);
      }

      _loadedMonths.add(selectedMonth);

      emit(
        state.copyWith(
          events: updatedEvents,
          isLoading: false,
          error: null,
        ),
      );
    } catch (e) {
      emit(
        state.copyWith(
          isLoading: false,
          error: e.toString(),
        ),
      );
      emit(CalendarEventsState(error: e.toString()));
    }
  }
}
