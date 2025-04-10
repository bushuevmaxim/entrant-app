import '../models/event.dart';

abstract class IEventsRepository {
  Future<List<Event>> getEventsBetweenDates({
    required DateTime startDate,
    required DateTime endDate,
  });
}