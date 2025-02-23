abstract final class Routes {
  static const String home = '/';
  static const String virtualAssistant = '/virtial_assistant';
  static const String events = '/events';
  static const String programms = '/programms';
  static String programmWithId(String id) => '$programms/$id';
}
