// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    ApplicationRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ApplicationScreen(),
      );
    },
    IbmcAnalysisRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const IbmcAnalysisScreen(),
      );
    },
    IbmcHomeRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const IbmcHomeScreen(),
      );
    },
    IbmcProfileRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const IbmcProfileScreen(),
      );
    },
    IbmcRootRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const IbmcRootScreen(),
      );
    },
    IbmcSettingsRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const IbmcSettingsScreen(),
      );
    },
  };
}

/// generated route for
/// [ApplicationScreen]
class ApplicationRoute extends PageRouteInfo<void> {
  const ApplicationRoute({List<PageRouteInfo>? children})
      : super(
          ApplicationRoute.name,
          initialChildren: children,
        );

  static const String name = 'ApplicationRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [IbmcAnalysisScreen]
class IbmcAnalysisRoute extends PageRouteInfo<void> {
  const IbmcAnalysisRoute({List<PageRouteInfo>? children})
      : super(
          IbmcAnalysisRoute.name,
          initialChildren: children,
        );

  static const String name = 'IbmcAnalysisRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [IbmcHomeScreen]
class IbmcHomeRoute extends PageRouteInfo<void> {
  const IbmcHomeRoute({List<PageRouteInfo>? children})
      : super(
          IbmcHomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'IbmcHomeRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [IbmcProfileScreen]
class IbmcProfileRoute extends PageRouteInfo<void> {
  const IbmcProfileRoute({List<PageRouteInfo>? children})
      : super(
          IbmcProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'IbmcProfileRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [IbmcRootScreen]
class IbmcRootRoute extends PageRouteInfo<void> {
  const IbmcRootRoute({List<PageRouteInfo>? children})
      : super(
          IbmcRootRoute.name,
          initialChildren: children,
        );

  static const String name = 'IbmcRootRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [IbmcSettingsScreen]
class IbmcSettingsRoute extends PageRouteInfo<void> {
  const IbmcSettingsRoute({List<PageRouteInfo>? children})
      : super(
          IbmcSettingsRoute.name,
          initialChildren: children,
        );

  static const String name = 'IbmcSettingsRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
