import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:cult_app/data/models/models.dart';
import 'package:cult_app/resources/app_helper.dart';
import 'package:cult_app/resources/constant.dart';
import 'package:cult_app/resources/styles.dart';
import 'package:cult_app/router/router.gr.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../../../data/dependency_container.dart';
import '../trypa/cubit/trypa_cubit.dart';

class DrawerWidget extends StatefulWidget {
  const DrawerWidget({super.key, required this.user});
  final User? user;

  @override
  State<DrawerWidget> createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        padding: const EdgeInsets.all(30),
        children: [
          const SizedBox(
            height: 32,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              GestureDetector(
                  onTap: () {
                    Navigator.pop(
                      context,
                    );
                  },
                  child: const Icon(
                    Icons.close,
                    size: 30,
                  ))
            ],
          ),
          const SizedBox(
            height: 12,
          ),
          if (widget.user != null) ...[
            GestureDetector(
              onTap: () {
                context.router.navigate(const UserInformationRoute());

                // Navigator.pop(context);
              },
              child: Container(
                color: Colors.white,
                child: Row(
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: const ShapeDecoration(
                        color: Color(0xFFD4D8E2),
                        shape: OvalBorder(),
                      ),
                      child: const Center(child: Text("")),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(widget.user?.usrName ?? ''),
                        Text(widget.user?.usrEmail ?? '')
                      ],
                    ),
                    const Spacer(),
                    // GestureDetector(
                    //     onTap: () {
                    //       // context.router.navigate(const UserInformationRoute());

                    //       Navigator.pop(context);
                    //     },
                    //     child: const Icon(Icons.arrow_forward))
                  ],
                ),
              ),
            ),
          ],
          const SizedBox(
            height: 50,
          ),
          if (AppHelper.token != null) ...[
            itemWidget(
                lable: 'Мої квитки',
                iconUrl: Constant.tikets,
                onTap: () {
                  context.tabsRouter.navigate(const TiketRoute());
                }),
            const SizedBox(
              height: 20,
            ),
          ],
          // itemWidget(
          //     lable: 'Хочу подивитись', iconUrl: Constant.like, onTap: () {}),
          // const SizedBox(
          //   height: 20,
          // ),
          // itemWidget(
          //     lable: 'Повідомлення',
          //     iconUrl: Constant.notification,
          //     onTap: () {}),
          // const SizedBox(
          //   height: 20,
          // ),
          if (AppHelper.token != null) ...[
            itemWidget(
                lable: 'Твоя інформація',
                iconUrl: Constant.personIcon,
                onTap: () {
                  context.router.navigate(const UserInformationRoute());
                }),
            const SizedBox(
              height: 20,
            ),
          ],
          itemWidget(
              lable: 'Трупа',
              iconUrl: Constant.trupaIccon,
              onTap: () {
                if (widget.user == null) {
                  getIt.resetLazySingleton<TrypaCubit>();
                  getIt<TrypaCubit>().init();
                  context.tabsRouter.navigate(const TrypaRoute());
                } else {
                  context.tabsRouter.navigate(const TrypaMainRoute());
                }
              }),
          const SizedBox(
            height: 20,
          ),
          // itemWidget(
          //     lable: 'Платіжні картки',
          //     iconUrl: Constant.payIcon,
          //     onTap: () {}),
          // const SizedBox(
          //   height: 20,
          // ),
          itemWidget(
              lable: 'Новини',
              iconUrl: Constant.newsIcon,
              onTap: () {
                context.tabsRouter.navigate(const NewsRoute());
              }),
          const SizedBox(
            height: 20,
          ),
          itemWidget(
              lable: 'Контакти',
              iconUrl: Constant.qa,
              onTap: () {
                context.router.navigate(const SupportRoute());
              }),
          const SizedBox(
            height: 40,
          ),

          OutlinedButton(
            onPressed: () {
              if (AppHelper.token == null) {
                context.router.push(LoginRoute());
                //  context.router.removeLast();
              } else {
                AppHelper.token = null;
                AppHelper.user = null;
                Box sessionStorage = Hive.box('session');
                sessionStorage.clear();
                context.router.replace(AuthRoute());
                context.router.removeLast();
              }
            },
            style: AppStyles.buttonStadiumBlueWite,
            child: Text(AppHelper.token == null
                ? "УВІЙТИ ДО АКАУНТУ".toUpperCase()
                : 'ВИЙТИ З АКАУНТУ'.toUpperCase()),
          ),

          const SizedBox(
            height: 20,
          ),
          // const Text(
          //   'ВИДАЛИТИ АККАУНТ',
          //   textAlign: TextAlign.center,
          //   style: TextStyle(
          //     color: Color(0xFF5F5F5F),
          //     fontSize: 10,
          //     fontFamily: 'Montserrat',
          //     fontWeight: FontWeight.w600,
          //     height: 0,
          //   ),
          // ),
          // const SizedBox(
          //   height: 40,
          // ),
        ],
      ),
    );
  }

  itemWidget(
      {required String lable,
      required String iconUrl,
      required Function() onTap}) {
    return GestureDetector(
      onTap: () {
        Navigator.pop(context);

        onTap();
      },
      child: Container(
        color: Colors.white,
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  lable,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 13,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w400,
                    height: 0,
                  ),
                ),
                const Spacer(),
                SvgPicture.asset(
                  iconUrl,
                  width: 20,
                  height: 20,
                  color: Colors.black,
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const Divider()
          ],
        ),
      ),
    );
  }
}
