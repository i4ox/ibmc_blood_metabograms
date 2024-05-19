import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:kmk_viewer/features/analysis/analysis.dart';
import 'package:kmk_viewer/features/dashboard/dashboard.dart';
import 'package:kmk_viewer/features/integrations/integrations.dart';
import 'package:kmk_viewer/features/profiles/profiles.dart';
import 'package:kmk_viewer/features/settings/settings.dart';
import 'package:kmk_viewer/features/settings/view/dev_mode_screen.dart';
import 'package:kmk_viewer/features/settings/view/l10n_screen.dart';
import 'package:kmk_viewer/home/home.dart';
import 'package:kmk_viewer/navigation/navigation.dart';
import 'package:kmk_viewer/onboarding/onboarding.dart';
import 'package:kmk_viewer/uikit/uikit.dart';

final GlobalKey<NavigatorState> _rootNavigatorKey = GlobalKey<NavigatorState>();
final GlobalKey<NavigatorState> _dashboardNavigatorKey = GlobalKey<NavigatorState>(debugLabel: "dashboard");
final GlobalKey<NavigatorState> _analysisNavigatorKey = GlobalKey<NavigatorState>(debugLabel: "analysis");
final GlobalKey<NavigatorState> _profilesNavigatorKey = GlobalKey<NavigatorState>(debugLabel: "profiles");
final GlobalKey<NavigatorState> _integrationsNavigatorKey = GlobalKey<NavigatorState>(debugLabel: "integrations");
final GlobalKey<NavigatorState> _settingsNavigatorKey = GlobalKey<NavigatorState>(debugLabel: "settings");
final GlobalKey<NavigatorState> _uikitWidgetsNavigatorKey = GlobalKey<NavigatorState>(debugLabel: "uikit_widgets");
final GlobalKey<NavigatorState> _uikitColorsNavigatorKey = GlobalKey<NavigatorState>(debugLabel: "uikit_colors");
final GlobalKey<NavigatorState> _uikitFontsNavigatorKey = GlobalKey<NavigatorState>(debugLabel: "uikit_fonts");
final GlobalKey<NavigatorState> _uikitIconsNavigatorKey = GlobalKey<NavigatorState>(debugLabel: "uikit_icons");

/// Create router for app
GoRouter createRouter() => GoRouter(
      navigatorKey: _rootNavigatorKey,
      initialLocation: '/home',
      routes: [
        GoRoute(path: '/', redirect: (_, __) => '/dashboard'),
        StatefulShellRoute.indexedStack(
          builder: (context, state, navigationShell) {
            return HomeNavigationShell(
              navigationShell: navigationShell,
            );
          },
          branches: <StatefulShellBranch>[
            StatefulShellBranch(
              navigatorKey: _dashboardNavigatorKey,
              routes: <GoRoute>[
                GoRoute(
                  path: '/dashboard',
                  builder: (context, state) => const DashboardScreen(),
                ),
              ],
            ),
            StatefulShellBranch(
              navigatorKey: _analysisNavigatorKey,
              routes: <GoRoute>[
                GoRoute(
                  path: '/analysis',
                  builder: (context, state) => const AnalysisScreen(),
                ),
              ],
            ),
            StatefulShellBranch(
              navigatorKey: _profilesNavigatorKey,
              routes: <GoRoute>[
                GoRoute(
                  path: '/profiles',
                  builder: (context, state) => const ProfilesScreen(),
                ),
              ],
            ),
            StatefulShellBranch(
              navigatorKey: _integrationsNavigatorKey,
              routes: <GoRoute>[
                GoRoute(
                  path: '/integrations',
                  builder: (context, state) => const IntegrationsScreen(),
                ),
              ],
            ),
            StatefulShellBranch(
              navigatorKey: _settingsNavigatorKey,
              routes: <GoRoute>[
                GoRoute(
                  builder: (context, state) => const SettingsScreen(),
                  path: '/settings',
                  routes: <GoRoute>[
                    GoRoute(
                      path: 'l10n',
                      builder: (context, state) => const L10nScreen(),
                    ),
                    GoRoute(
                      path: 'devmode',
                      builder: (context, state) => const DevModeScreen(),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
        GoRoute(
          parentNavigatorKey: _rootNavigatorKey,
          path: '/home',
          builder: (context, state) => const HomeScreen(),
        ),
        GoRoute(
          parentNavigatorKey: _rootNavigatorKey,
          path: '/onboarding',
          builder: (context, state) => const OnboardingScreen(),
        ),
        GoRoute(
          parentNavigatorKey: _rootNavigatorKey,
          path: '/uikit',
          redirect: (_, __) => "/uikit/widgets",
        ),
        StatefulShellRoute.indexedStack(
          parentNavigatorKey: _rootNavigatorKey,
          builder: (context, state, navigationShell) {
            return UiKitNavigationShell(
              navigationShell: navigationShell,
            );
          },
          branches: <StatefulShellBranch>[
            StatefulShellBranch(
              navigatorKey: _uikitWidgetsNavigatorKey,
              routes: <GoRoute>[
                GoRoute(
                  path: "/uikit/widgets",
                  builder: (context, state) => const WidgetsScreen(),
                ),
              ],
            ),
            StatefulShellBranch(
              navigatorKey: _uikitColorsNavigatorKey,
              routes: <GoRoute>[
                GoRoute(
                  path: "/uikit/colors",
                  builder: (context, state) => const ColorsScreen(),
                ),
              ],
            ),
            StatefulShellBranch(
              navigatorKey: _uikitFontsNavigatorKey,
              routes: <GoRoute>[
                GoRoute(
                  path: "/uikit/fonts",
                  builder: (context, state) => const FontsScreen(),
                ),
              ],
            ),
            StatefulShellBranch(
              navigatorKey: _uikitIconsNavigatorKey,
              routes: <GoRoute>[
                GoRoute(
                  path: "/uikit/icons",
                  builder: (context, state) => const IconsScreen(),
                ),
              ],
            ),
          ],
        ),
      ],
    );
