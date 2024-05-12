import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:ibmc_blood_metabograms/features/analysis/analysis.dart';
import 'package:ibmc_blood_metabograms/features/dashboard/dashboard.dart';
import 'package:ibmc_blood_metabograms/features/profiles/profiles.dart';
import 'package:ibmc_blood_metabograms/features/settings/settings.dart';
import 'package:ibmc_blood_metabograms/features/settings/view/l10n_screen.dart';
import 'package:ibmc_blood_metabograms/home/home.dart';
import 'package:ibmc_blood_metabograms/navigation/navigation.dart';
import 'package:ibmc_blood_metabograms/onboarding/onboarding.dart';

final GlobalKey<NavigatorState> _rootNavigatorKey = GlobalKey<NavigatorState>();
final GlobalKey<NavigatorState> _dashboardNavigatorKey = GlobalKey<NavigatorState>();
final GlobalKey<NavigatorState> _analysisNavigatorKey = GlobalKey<NavigatorState>();
final GlobalKey<NavigatorState> _profilesNavigatorKey = GlobalKey<NavigatorState>();
final GlobalKey<NavigatorState> _settingsNavigatorKey = GlobalKey<NavigatorState>();

/// Create router for app
GoRouter createRouter() => GoRouter(
  navigatorKey: _rootNavigatorKey,
  initialLocation: '/home',
  routes: [
    GoRoute(
      parentNavigatorKey: _rootNavigatorKey,
      path: '/home',
      builder: (context, state) => HomeScreen(),
    ),
    GoRoute(
      parentNavigatorKey: _rootNavigatorKey,
      path: '/onboarding',
      builder: (context, state) => OnboardingScreen(),
    ),
    GoRoute(path: '/', redirect: (_, __) => '/dashboard'),
    StatefulShellRoute.indexedStack(
      builder: (context, state, navigationShell) {
        return ScaffoldNavigationShell(
          navigationShell: navigationShell,
        );
      }, 
      branches: <StatefulShellBranch>[
        StatefulShellBranch(
          navigatorKey: _dashboardNavigatorKey,
          routes: <GoRoute>[
            GoRoute(
              path: '/dashboard',
              builder: (context, state) => DashboardScreen(),
            ),
          ],
        ),
        StatefulShellBranch(
          navigatorKey: _analysisNavigatorKey,
          routes: <GoRoute>[
            GoRoute(
              path: '/analysis',
              builder: (context, state) => AnalysisScreen(),
            ),
          ],
        ),
        StatefulShellBranch(
          navigatorKey: _profilesNavigatorKey,
          routes: <GoRoute>[
            GoRoute(
              path: '/profiles',
              builder: (context, state) => ProfilesScreen(),
            ),
          ],
        ),
        StatefulShellBranch(
          navigatorKey: _settingsNavigatorKey,
          routes: <GoRoute>[
            GoRoute(
              path: '/settings',
              builder: (context, state) => SettingsScreen(),
              routes: <GoRoute>[
                GoRoute(
                  path: 'l10n',
                  builder: (context, state) => L10nScreen(),
                ),
              ],
            ),
          ],
        ),
      ],
    ),
  ],
);
