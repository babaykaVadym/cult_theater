import 'dart:convert';

import 'package:auto_route/auto_route.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cult_app/data/dependency_container.dart';
import 'package:cult_app/data/models/models.dart';
import 'package:cult_app/data/repository/auth.dart';
import 'package:cult_app/resources/app_helper.dart';
import 'package:cult_app/resources/constant.dart';
import 'package:cult_app/router/router.gr.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:onesignal_flutter/onesignal_flutter.dart';

@RoutePage()
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    inits(context);
    super.initState();
  }

  inits(BuildContext context) async {
    OneSignal.Debug.setLogLevel(OSLogLevel.verbose);

    OneSignal.initialize("06354807-163f-4854-8c9a-be69f8d07a38");

// The promptForPushNotificationsWithUserResponse function will show the iOS or Android push notification prompt. We recommend removing the following code and instead using an In-App Message to prompt for notification permission
    OneSignal.Notifications.requestPermission(true);

    String? domen;

    try {
      final dataQuery = await FirebaseFirestore.instance
          .collection('setting')
          .doc('domen')
          .get();

      domen = dataQuery.data()?['url'];
    } catch (e) {
      AppHelper.showToastD(context,
          text: "Щось пішло не так",
          bgColor: Colors.red,
          textColor: Colors.white);

      return;
    }

    if (domen?.isNotEmpty == true) {
      urlDomen = domen!;

      //https://tst2.salesup-crm.com/api

      ///

      await Future.delayed(const Duration(seconds: 1));

      Box sessionStorage = Hive.box('session');

      if (sessionStorage.get('user') != null) {
        // AppHelper.token = sessionStorage.get('token');

        LoginData loginData =
            LoginData.fromJson(jsonDecode(sessionStorage.get('user')));
        try {
          final result = await getIt<AuthRepository>().refreshAuth(
            refreshToken: loginData.refreshToken,
            token: loginData.accessToken,
          );

          if (result != null) {
            await Future.wait([
              sessionStorage.put('user', jsonEncode(result)),
            ]);

            sessionStorage.put("token", result.accessToken);
            AppHelper.token = result.accessToken;
            context.router.replace(const MainRoute());
          } else {
            context.router.replace(AuthRoute());
          }
        } catch (e) {
          sessionStorage.clear();
          AppHelper.showToastD(context,
              text: "Щось пішло не так",
              bgColor: Colors.red,
              textColor: Colors.white);

          context.router.replace(AuthRoute());
        }
      } else {
        await Future.delayed(const Duration(seconds: 2));
        context.router.replace(AuthRoute());
      }
    } else {
      AppHelper.showToastD(context,
          text: "Щось пішло не так",
          bgColor: Colors.red,
          textColor: Colors.white);
      return;
    }
  }

  @override
  Widget build(BuildContext context) {
    debugPrint("SplashScreen");
    return Scaffold(
      backgroundColor: Constant.blue,
      body: Center(
          child: SizedBox(
              width: 191,
              height: 71,
              child: Image.asset(
                'assets/Logo_wite.png',
                fit: BoxFit.cover,
              ))),
    );
  }
}
