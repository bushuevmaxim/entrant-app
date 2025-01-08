import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pmfi_entrant_app/src/features/bottom_navigation/presentation/bottom_navigation_page.dart';
import 'package:pmfi_entrant_app/src/features/calendar_events/presentation/calendar_events_page.dart';
import 'package:pmfi_entrant_app/src/features/detailed_course/presentation/detailed_course_page.dart';
import 'package:pmfi_entrant_app/src/features/home/presentation/home_page.dart';
import 'package:pmfi_entrant_app/src/features/map/presentation/map_page.dart';
import 'package:pmfi_entrant_app/src/features/qa_chat/presentation/qa_chat_page.dart';

import 'routes.dart';

GoRouter router() => _router;

final GoRouter _router = GoRouter(
  routes: <RouteBase>[
    StatefulShellRoute.indexedStack(
      builder: (context, state, navigationShell) {
        return BottomNavigationPage(
          navigationShell: navigationShell,
        );
      },
      branches: [
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: Routes.home,
              builder: (BuildContext context, GoRouterState state) {
                return const HomePage();
              },
              routes: <RouteBase>[
                GoRoute(
                  path: '${Routes.courses}/:id',
                  builder: (BuildContext context, GoRouterState state) {
                    final courseId = state.pathParameters['id']!;

                    return DetailedCoursePage(courseId: courseId);
                  },
                ),
              ],
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: Routes.virtualAssistant,
              builder: (BuildContext context, GoRouterState state) {
                return const QAChatPage();
              },
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: Routes.events,
              builder: (BuildContext context, GoRouterState state) {
                return const CalendarEventsPage();
              },
            ),
          ],
        ),
      ],
    ),
    GoRoute(
      path: '/map',
      builder: (BuildContext context, GoRouterState state) {
        return const MapPage();
      },
    ),
  ],
);
