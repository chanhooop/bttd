import 'package:bttd/1.dart';
import 'package:bttd/2.dart';
import 'package:bttd/3.dart';
import 'package:bttd/3_1.dart';
import 'package:bttd/core/bottom_navigation_layout.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final rootKey = GlobalKey<NavigatorState>();

final GoRouter router = GoRouter(
  navigatorKey: rootKey,
  initialLocation: '/1',
  routes: <RouteBase>[
    StatefulShellRoute.indexedStack(
      builder: (BuildContext context, GoRouterState state,
              StatefulNavigationShell navigationShell) =>
          BottomNavigationLayout(navigationShell: navigationShell),
      branches: <StatefulShellBranch>[
        StatefulShellBranch(routes: <RouteBase>[
          GoRoute(
            path: '/1',
            builder: (context, state) => const Screen1(),
          ),
        ]),
        StatefulShellBranch(routes: <RouteBase>[
          GoRoute(
            path: '/2',
            builder: (context, state) => const Screen2(),
          ),
        ]),
        StatefulShellBranch(routes: <RouteBase>[
          GoRoute(
            path: '/3',
            builder: (context, state) => const Screen3(),
            routes: [
              GoRoute(
                path: '3_1',
                parentNavigatorKey: rootKey,
                builder: (context, state) => const Screen3_1(),
              ),
            ],
          ),
        ]),
      ],
    ),
  ],
);
