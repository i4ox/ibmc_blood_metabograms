import 'package:auto_route/auto_route.dart';
import 'package:ibmc_blood_metabograms/features/ibmc_home/view/ibmc_home_screen.dart';
import 'package:ibmc_blood_metabograms/navigation/app_route_paths.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
    AutoRoute(
      page: IbmcHomeRoute.page,
      path: AppRoutePaths.homePath,
      initial: true
    ),
  ];
}
