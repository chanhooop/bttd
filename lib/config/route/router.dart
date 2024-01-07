import 'package:bttd/3.dart';
import 'package:bttd/3_1.dart';
import 'package:bttd/core/layout/bottom_navigation_layout.dart';
import 'package:bttd/service/game/confirm_game_screen.dart';
import 'package:bttd/service/home/matching_screen.dart';
import 'package:bttd/service/home/post_add_screen.dart';
import 'package:bttd/service/home/post_detail_view.dart';
import 'package:bttd/service/user/sign_in_screen.dart';
import 'package:bttd/service/user/sign_up_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../service/home/home_screen.dart';

final _rootKey = GlobalKey<NavigatorState>();

final GoRouter router = GoRouter(
  navigatorKey: _rootKey,
  initialLocation: '/${HomeScreen.routeName}',
  routes: <RouteBase>[
    GoRoute(
      path: '/${SignUpScreen.routeName}',
    name: SignUpScreen.routeName,
      builder: (context, state)=>SignUpScreen(),
    ),
    GoRoute(
      path: '/${SignInScreen.routeName}',
      name: SignInScreen.routeName,
      builder: (context, state)=>SignInScreen(),
    ),
    GoRoute(
      path: '/${ConfirmGameScreen.routeName}',
      name: ConfirmGameScreen.routeName,
      builder: (context, state)=>ConfirmGameScreen(),
    ),
    StatefulShellRoute.indexedStack(
      builder: (BuildContext context, GoRouterState state,
              StatefulNavigationShell navigationShell) =>
          BottomNavigationLayout(navigationShell: navigationShell),
      branches: <StatefulShellBranch>[
        /// 1번 BottomNavigation 탭
        StatefulShellBranch(routes: <RouteBase>[
          GoRoute(
              path: '/${MatchingScreen.routeName}',
              name: MatchingScreen.routeName,
              builder: (context, state) => const MatchingScreen(),
              routes: [
                GoRoute(
                    path: PostAddScreen.routeName,
                    name: PostAddScreen.routeName,
                    builder: (context, state) => const PostAddScreen()),
              ]),
        ]),

        /// 2번 BottomNavigation 탭
        StatefulShellBranch(routes: <RouteBase>[
          GoRoute(
            path: '/${HomeScreen.routeName}',
            name: '${HomeScreen.routeName}',
            builder: (context, state) => const HomeScreen(),
            routes: [
              GoRoute(
                path: PostDetailView.routeName,
                name: PostDetailView.routeName,
                parentNavigatorKey: _rootKey,
                builder: (context, state) => const PostDetailView(),
              ),
            ],
          ),
        ]),

        /// 3번 BottomNavigation 탭
        StatefulShellBranch(routes: <RouteBase>[
          GoRoute(
            path: '/3',
            builder: (context, state) => const Screen3(),
            routes: [
              GoRoute(
                path: '3_1',
                name: '3_1',
                parentNavigatorKey: _rootKey,
                builder: (context, state) => const Screen3_1(),
              ),
            ],
          ),
        ]),
      ],
    ),
  ],
);
