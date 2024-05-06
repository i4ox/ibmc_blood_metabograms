import 'package:auto_route/auto_route.dart';
import 'package:ibmc_blood_metabograms/features/ibmc_analysis/ibmc_analysis.dart';
import 'package:ibmc_blood_metabograms/features/ibmc_home/ibmc_home.dart';
import 'package:ibmc_blood_metabograms/features/ibmc_profile/ibmc_profile.dart';
import 'package:ibmc_blood_metabograms/features/ibmc_settings/ibmc_settings.dart';
import 'package:ibmc_blood_metabograms/navigation/app_route_paths.dart';
import 'package:ibmc_blood_metabograms/features/ibmc_root/ibmc_root.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: IbmcRootRoute.page,
          path: AppRoutePaths.rootPath,
          initial: true,
          children: [
            AutoRoute(
              page: IbmcHomeRoute.page,
              path: AppRoutePaths.homePath,
            ),
            AutoRoute(
              page: IbmcAnalysisRoute.page,
              path: AppRoutePaths.analysisPath,
            ),
            AutoRoute(
              page: IbmcProfileRoute.page,
              path: AppRoutePaths.usersPath,
            ),
            AutoRoute(
              page: IbmcSettingsRoute.page,
              path: AppRoutePaths.settingsPath,
            ),
          ],
        ),
      ];
}
