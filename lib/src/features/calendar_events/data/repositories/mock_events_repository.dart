import 'package:pmfi_entrant_app/src/features/calendar_events/domain/models/event.dart';
import 'package:pmfi_entrant_app/src/features/calendar_events/domain/repositories/events_repository.dart';

class MockEventsRepository implements IEventsRepository {
  @override
  Future<List<Event>> getEventsBetweenDates({
    required DateTime startDate,
    required DateTime endDate,
  }) async {
    await Future.delayed(const Duration(seconds: 1));

    final events = [
      Event(
        name: 'День открытых дверей',
        description:
            'Приглашаем всех желающих познакомиться с нашим университетом!',
        link: 'https://omgtu.ru/',
        date: DateTime.now().add(const Duration(days: 5)),
        shouldNotify: true,
      ),
      Event(
        name: 'День открытых дверей',
        description:
            'Приглашаем всех желающих познакомиться с нашим университетом!',
        link: 'https://omgtu.ru/',
        date: DateTime.now().add(const Duration(days: 5)),
      ),
      Event(
        name: 'День открытых дверей',
        description:
            'Приглашаем всех желающих познакомиться с нашим университетом!',
        link: 'https://omgtu.ru/',
        date: DateTime.now().add(const Duration(days: 5)),
      ),
      Event(
        name: 'День открытых дверей',
        description:
            'Приглашаем всех желающих познакомиться с нашим университетом!',
        link: 'https://omgtu.ru/',
        date: DateTime.now().add(const Duration(days: 5)),
      ),
      Event(
        name: 'День открытых дверей',
        description:
            'Приглашаем всех желающих познакомиться с нашим университетом!',
        link: 'https://omgtu.ru/',
        date: DateTime.now().add(const Duration(days: 5)),
      ),
      Event(
        name: 'День открытых дверей',
        description:
            'Приглашаем всех желающих познакомиться с нашим университетом!',
        link: 'https://omgtu.ru/',
        date: DateTime.now().add(const Duration(days: 5)),
      ),
      Event(
        name: 'День открытых дверей',
        description:
            'Приглашаем всех желающих познакомиться с нашим университетом!',
        link: 'https://omgtu.ru/',
        date: DateTime.now().add(const Duration(days: 5)),
      ),
      Event(
        name: 'День открытых дверей',
        description:
            'Приглашаем всех желающих познакомиться с нашим университетом!',
        link: 'https://omgtu.ru/',
        date: DateTime.now().add(const Duration(days: 5)),
      ),
      Event(
        name: 'День открытых дверей',
        description:
            'Приглашаем всех желающих познакомиться с нашим университетом!',
        link: 'https://omgtu.ru/',
        date: DateTime.now().add(const Duration(days: 5)),
      ),
      Event(
        name: 'День открытых дверей',
        description:
            'Приглашаем всех желающих познакомиться с нашим университетом!',
        link: 'https://omgtu.ru/',
        date: DateTime.now().add(const Duration(days: 5)),
      ),
      Event(
        name: 'День открытых дверей',
        description:
            'Приглашаем всех желающих познакомиться с нашим университетом!',
        link: 'https://omgtu.ru/',
        date: DateTime.now().add(const Duration(days: 5)),
      ),
      Event(
        name: 'День открытых дверей',
        description:
            'Приглашаем всех желающих познакомиться с нашим университетом!',
        link: 'https://omgtu.ru/',
        date: DateTime.now().add(const Duration(days: 5)),
      ),
      Event(
        name: 'Встреча с работодателями',
        description:
            'Представители ведущих компаний расскажут о карьерных возможностях',
        link: 'https://example.com/career-day',
        date: DateTime.now().add(const Duration(days: 10)),
      ),
      Event(
        name: 'Научная конференция',
        description: 'Ежегодная конференция молодых ученых',
        link: 'https://example.com/conference',
        date: DateTime.now().add(const Duration(days: 15)),
      ),
    ];

    return events.toList();
  }
}
