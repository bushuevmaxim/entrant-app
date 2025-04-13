import 'package:flutter_web_plugins/flutter_web_plugins.dart';

/// Configures the app for web platform
///
/// Sets up the URL strategy to use paths instead of hashes
void configureApp() {
  // Use path URL strategy for cleaner URLs without hash fragments
  usePathUrlStrategy();
}
