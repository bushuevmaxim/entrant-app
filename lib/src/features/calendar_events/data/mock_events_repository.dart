import '../domain/models/event.dart';
import '../domain/repositories/events_repository.dart';

class MockEventsRepository implements IEventsRepository {
  @override
  Future<List<Event>> getEventsBetweenDates({
    required DateTime startDate,
    required DateTime endDate,
  }) async {
    // Simulate API delay
    await Future.delayed(const Duration(milliseconds: 800));

    // Mock events data
    final events = [
      Event(
        name: 'День открытых дверей',
        description:
            'Приглашаем абитуриентов и их родителей на день открытых дверей ПГНИУ',
        date: DateTime(2024, 1, 15, 10, 0),
        link: 'https://psu.ru/open-day',
      ),
      Event(
        name: 'Начало приема документов',
        description: 'Старт приемной кампании 2024',
        date: DateTime(2024, 2, 1, 9, 0),
        link: 'https://psu.ru/admission',
      ),
      Event(
        name: 'Мастер-класс по подготовке к ЕГЭ',
        description: 'Советы от экспертов по подготовке к экзаменам',
        date: DateTime(2024, 2, 20, 15, 30),
        link: 'https://psu.ru/ege-prep',
      ),
    ];

    // Filter events within the date range
    return events.where((event) {
      final eventDate =
          DateTime(event.date.year, event.date.month, event.date.day);
      final start = DateTime(startDate.year, startDate.month, startDate.day);
      final end = DateTime(endDate.year, endDate.month, endDate.day);
      return eventDate.isAtSameMomentAs(start) ||
          eventDate.isAtSameMomentAs(end) ||
          (eventDate.isAfter(start) && eventDate.isBefore(end));
    }).toList();
  }
}
