import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:cult_app/data/dependency_container.dart';
import 'package:cult_app/resources/app_helper.dart';
import 'package:cult_app/router/router.gr.dart';
import 'package:cult_app/ui/screens/afisha/cubit/afisha_cubit.dart';
import 'package:cult_app/ui/screens/new/cubit/news_cubit.dart';
import 'package:cult_app/ui/screens/ticket/cubit/tiket_cubit.dart';
import 'package:cult_app/ui/screens/trypa/cubit/trypa_cubit.dart';

import '../resources/constant.dart';

@RoutePage()
class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    debugPrint("[Build] MainView");

    return PopScope(
      canPop: false,
      onPopInvoked: (v) async {
        if (AppHelper.keyAfisha.currentState?.isDrawerOpen == true) {
          AppHelper.keyAfisha.currentState?.closeDrawer();
        } else if (AppHelper.keyTrupa.currentState?.isDrawerOpen == true) {
          AppHelper.keyTrupa.currentState?.closeDrawer();
        } else if (AppHelper.keyTiket.currentState?.isDrawerOpen == true) {
          AppHelper.keyTiket.currentState?.closeDrawer();
        } else if (AppHelper.keyNews.currentState?.isDrawerOpen == true) {
          AppHelper.keyNews.currentState?.closeDrawer();
        } else {
          await showDialog(
              context: context,
              builder: (context) => AlertDialog(
                    title: const Text('Ви хочете вийти з додатка?'),
                    actions: <Widget>[
                      TextButton(
                        child: const Text(
                          'Ні',
                          style: TextStyle(color: Constant.blue),
                        ),
                        onPressed: () => {Navigator.pop(context, false)},
                      ),
                      TextButton(
                          onPressed: () {
                            SystemNavigator.pop();
                            Navigator.pop(context, true);
                          },
                          child: const Text('Так',
                              style: TextStyle(color: Constant.red)))
                    ],
                  ));
        }
      },
      child: AutoTabsScaffold(
        lazyLoad: true,
        routes: [
          const AfishaRoute(),
          if (AppHelper.token != null)
            const TiketRoute()
          else
            const TrypaRoute(),
          const NewsRoute()
        ],
        bottomNavigationBuilder: (_, tabsRouter) {
          return BottomNavigationBar(
            currentIndex: tabsRouter.activeIndex,
            onTap: (v) {
              try {
                AppHelper.keyAfisha.currentState!.closeDrawer();
              } catch (e) {
                //
              }
              try {
                AppHelper.keyTrupa.currentState!.closeDrawer();
              } catch (e) {
                //
              }

              try {
                AppHelper.keyTiket.currentState!.closeDrawer();
              } catch (e) {
                //
              }

              try {
                AppHelper.keyNews.currentState!.closeDrawer();
              } catch (e) {
                //
              }

              if (v == 0) {
                getIt.resetLazySingleton<AfishaCubit>();
                // getIt<AfishaCubit>().init(
                //   context,
                // );
              } else if (v == 1) {
                if (AppHelper.token != null) {
                  getIt.resetLazySingleton<TiketCubit>();
                  //getIt<TiketCubit>().refeshDatta();
                } else {
                  getIt.resetLazySingleton<TrypaCubit>();
                  //   getIt<TrypaCubit>().init();
                }
              } else {
                getIt.resetLazySingleton<NewsCubit>();
                // /getIt<NewsCubit>().init();
              }

              tabsRouter.setActiveIndex(v);
            },
            selectedItemColor: Constant.blue,
            selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
            unselectedItemColor: Colors.black,
            items: [
              BottomNavigationBarItem(
                label: 'Афіша',
                icon: SvgPicture.asset(
                  Constant.afishaIcon,
                  width: 24,
                  height: 24,
                  color: Colors.grey,
                ),
              ),

              //Constant.tikets
              if (AppHelper.token != null)
                BottomNavigationBarItem(
                  label: 'Мої квитки',
                  icon: SvgPicture.asset(
                    Constant.tikets,
                    width: 24,
                    height: 24,
                    color: Colors.grey,
                  ),
                ),
              if (AppHelper.token == null)
                BottomNavigationBarItem(
                  label: 'Трупа',
                  icon: SvgPicture.asset(
                    Constant.trupaIccon,
                    width: 24,
                    height: 24,
                    color: Colors.grey,
                  ),
                ),
              BottomNavigationBarItem(
                label: 'Новини',
                icon: SvgPicture.asset(
                  Constant.newsIcon,
                  width: 24,
                  height: 24,
                  color: Colors.grey,
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
