import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:table_calendar/table_calendar.dart';
import '../domain/bloc/calendar_events_bloc.dart';
import '../domain/models/event.dart';
import 'widgets/event_card.dart';

class CalendarEventsPage extends StatelessWidget {
  const CalendarEventsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CalendarEventsBloc(
        eventsRepository: context.read(),
      )..add(
          CalendarEventsEvent.loadEvents(
            selectedMonth: kToday,
          ),
        ),
      child: const CalendarEventsView(),
    );
  }
}

class CalendarEventsView extends StatefulWidget {
  const CalendarEventsView({super.key});

  @override
  State<CalendarEventsView> createState() => _CalendarEventsViewState();
}

class _CalendarEventsViewState extends State<CalendarEventsView> {
  late final ValueNotifier<DateTime> _selectedDayNotifier;

  late final _lastDay = DateTime(kToday.year, kToday.month + 5, kToday.day);

  @override
  void initState() {
    super.initState();
    _selectedDayNotifier = ValueNotifier<DateTime>(kToday);
  }

  @override
  void dispose() {
    _selectedDayNotifier.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Календарь событий'),
      ),
      body: Column(
        children: [
          BlocBuilder<CalendarEventsBloc, CalendarEventsState>(
            builder: (context, state) {
              return ValueListenableBuilder<DateTime>(
                valueListenable: _selectedDayNotifier,
                builder: (context, focusedDay, _) {
                  return TableCalendar<Event>(
                    firstDay: kToday,
                    lastDay: _lastDay,
                    focusedDay: focusedDay,
                    selectedDayPredicate: (day) => isSameDay(day, focusedDay),
                    calendarStyle: const CalendarStyle(
                      outsideDaysVisible: false,
                    ),
                    headerStyle: const HeaderStyle(formatButtonVisible: false),
                    eventLoader: (day) {
                      final date = DateTime(
                        day.year,
                        day.month,
                        day.day,
                      );
                      final events = state.events[date] ?? [];
                      return events;
                    },
                    onPageChanged: (focusedDay) {
                      _selectedDayNotifier.value = focusedDay;
                      context.read<CalendarEventsBloc>().add(
                            CalendarEventsEvent.loadEvents(
                              selectedMonth: focusedDay,
                            ),
                          );
                    },
                    onDaySelected: (selectedDay, focusedDay) {
                      _selectedDayNotifier.value = selectedDay;
                    },
                  );
                },
              );
            },
          ),
          const SizedBox(height: 8.0),
          Expanded(
            child: BlocBuilder<CalendarEventsBloc, CalendarEventsState>(
              builder: (context, state) {
                return switch (state) {
                  CalendarEventsState(isLoading: true) =>
                    const Center(child: CircularProgressIndicator()),
                  CalendarEventsState(error: final error?) => Center(
                      child: Text('Error: $error'),
                    ),
                  CalendarEventsState(events: final events) =>
                    ValueListenableBuilder(
                      valueListenable: _selectedDayNotifier,
                      builder: (context, selectedDay, child) {
                        final date = DateTime(
                          selectedDay.year,
                          selectedDay.month,
                          selectedDay.day,
                        );
                        final dayEvents = events[date] ?? [];

                        if (dayEvents.isEmpty) {
                          return const Center(
                            child: Text('События не найдены'),
                          );
                        }

                        return ListView.separated(
                          padding: const EdgeInsets.all(16),
                          itemCount: dayEvents.length,
                          separatorBuilder: (context, index) =>
                              const SizedBox(height: 8),
                          itemBuilder: (context, index) {
                            return EventCard(event: dayEvents.elementAt(index));
                          },
                        );
                      },
                    )
                };
              },
            ),
          ),
        ],
      ),
    );
  }
}

final kToday = DateTime.now();
