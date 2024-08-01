import 'package:auto_route/auto_route.dart';

import 'router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen,Route')
class AppRouter extends $AppRouter {
  @override
  final List<AutoRoute> routes = [
    CustomRoute(page: SplashRoute.page, initial: true),
    CustomRoute(
        page: MainRoute.page,
        transitionsBuilder: TransitionsBuilders.noTransition,
        children: [
          CustomRoute(
            maintainState: false,
            page: AfishaRoute.page,
            transitionsBuilder: TransitionsBuilders.noTransition,
          ),
          CustomRoute(
            maintainState: false,
            page: TiketRoute.page,
            transitionsBuilder: TransitionsBuilders.noTransition,
          ),
          CustomRoute(
            maintainState: false,
            page: TrypaRoute.page,
            transitionsBuilder: TransitionsBuilders.noTransition,
          ),
          CustomRoute(
            maintainState: false,
            page: NewsRoute.page,
            transitionsBuilder: TransitionsBuilders.noTransition,
          ),
        ]),
    CustomRoute(
      // maintainState: false,
      page: AuthRoute.page,
      transitionsBuilder: TransitionsBuilders.noTransition,
    ),
    CustomRoute(
      //   maintainState: false,
      page: RegistrationRoute.page,
      transitionsBuilder: TransitionsBuilders.noTransition,
    ),
    CustomRoute(
      //   maintainState: false,
      page: TiketSitsShellRoute.page,
      transitionsBuilder: TransitionsBuilders.noTransition,
    ),
    CustomRoute(
      page: ByTicketRoute.page,
      transitionsBuilder: TransitionsBuilders.noTransition,
    ),
    CustomRoute(
      page: UserInformationRoute.page,
      transitionsBuilder: TransitionsBuilders.noTransition,
    ),
    CustomRoute(
      page: SupportRoute.page,
      transitionsBuilder: TransitionsBuilders.noTransition,
    ),
    CustomRoute(
      page: RecoweryPasswordRoute.page,
      transitionsBuilder: TransitionsBuilders.noTransition,
    ),
    CustomRoute(
      page: EnterPinRoute.page,
      transitionsBuilder: TransitionsBuilders.noTransition,
    ),
    CustomRoute(
      page: LoginRoute.page,
      transitionsBuilder: TransitionsBuilders.noTransition,
    ),
    CustomRoute(
      page: TrypaMainRoute.page,
      transitionsBuilder: TransitionsBuilders.noTransition,
    ),
    CustomRoute(
      page: NewsRoute.page,
      transitionsBuilder: TransitionsBuilders.noTransition,
    ),
    CustomRoute(
      page: AfishaRoute.page,
      transitionsBuilder: TransitionsBuilders.noTransition,
    ),
    CustomRoute(
      page: TeaterRoute.page,
      transitionsBuilder: TransitionsBuilders.noTransition,
    ),
    CustomRoute(
      page: AfishaViewRoute.page,
      transitionsBuilder: TransitionsBuilders.noTransition,
    ),
    CustomRoute(
      page: BayTeaterTicketRoute.page,
      transitionsBuilder: TransitionsBuilders.noTransition,
    ),
  ];
}
