import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pmfi_entrant_app/src/features/bottom_navigation/presentation/bottom_navigation_page.dart';
import 'package:pmfi_entrant_app/src/features/calendar_events/presentation/calendar_events_page.dart';
import 'package:pmfi_entrant_app/src/features/home/presentation/home_page.dart';
import 'package:pmfi_entrant_app/src/features/map/presentation/map_page.dart';

import '../features/detailed_programm/presentation/detailed_programm_page.dart';
import 'routes.dart';

GoRouter router() => _router;

final GoRouter _router = GoRouter(
  routes: <RouteBase>[
    StatefulShellRoute.indexedStack(
      builder: (context, state, navigationShell) {
        return BottomNavigationPage(navigationShell: navigationShell);
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
                  path: '${Routes.programms}/:id',
                  builder: (BuildContext context, GoRouterState state) {
                    final courseId = state.pathParameters['id']!;

                    return DetailedProgrammPage(programmId: courseId);
                  },
                ),
              ],
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
