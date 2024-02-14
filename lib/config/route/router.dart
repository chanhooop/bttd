import 'package:bttd/3.dart';
import 'package:bttd/3_1.dart';
import 'package:bttd/core/layout/bottom_navigation_layout.dart';
import 'package:bttd/service/game/confirm_game_screen.dart';
import 'package:bttd/service/home/matching_screen.dart';
import 'package:bttd/service/home/post_add_screen.dart';
import 'package:bttd/service/home/post_detail_view.dart';
import 'package:bttd/service/user/my_info_view.dart';
import 'package:bttd/service/user/sign_in_view.dart';
import 'package:bttd/service/user/sign_up_view.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../service/home/home_screen.dart';

final _rootKey = GlobalKey<NavigatorState>();

final GoRouter router = GoRouter(
  navigatorKey: _rootKey,
  initialLocation: '/${HomeScreen.routeName}',
  routes: <RouteBase>[
    /// 로그인 화면
    GoRoute(
      path: '/${SignUpView.routeName}',
    name: SignUpView.routeName,
      builder: (context, state)=>SignUpView(),
    ),
    /// 회원가입 화면
    GoRoute(
      path: '/${SignInView.routeName}',
      name: SignInView.routeName,
      builder: (context, state)=>SignInView(),
    ),
    /// 승부확정 확면
    GoRoute(
      path: '/${ConfirmGameScreen.routeName}',
      name: ConfirmGameScreen.routeName,
      builder: (context, state)=>ConfirmGameScreen(),
    ),
    /// 내 정보 화면
    GoRoute(
      path: '/${MyInfoView.routeName}',
      name: MyInfoView.routeName,
      builder: (context, state)=>MyInfoView(),
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
                builder: (context, state) => PostDetailView(
                  extra: state.extra,
                ),
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
