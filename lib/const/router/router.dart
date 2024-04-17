import 'package:auto_route/auto_route.dart';
import 'package:task_hyd/const/router/router.gr.dart';

@AutoRouterConfig()
class AppRouter extends $AppRouter {
  @override
  late final List<AutoRoute> routes = [
    AdaptiveRoute(
      page: SplashRoute.page,
      path: '/splash',
    ),
    AdaptiveRoute(page: HomeRoute.page, path: '/home'),
    AdaptiveRoute(
      page: NavBarRoute.page,
      path: '/navbar',
      initial: true,
      children: [
        AdaptiveRoute(page: HomeRoute.page),
        AdaptiveRoute(page: ShortsRoute.page),
      ],
    ),
    AdaptiveRoute(
      page: ShortsRoute.page,
      path: '/Shorts',
    ),
  ];
}
