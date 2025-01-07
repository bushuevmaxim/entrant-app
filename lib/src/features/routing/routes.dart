abstract final class Routes {
  static const String home = '/';
  static const String virtualAssistant = '/virtial_assistant';
  static const String events = '/events';
  static const String courses = '/courses';
  static String courseWithId(String id) => '$courses/$id';
}
