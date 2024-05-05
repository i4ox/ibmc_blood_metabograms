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
    IbmcHomeRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const IbmcHomeScreen(),
      );
    }
  };
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
