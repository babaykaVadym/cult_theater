import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:cult_app/resources/styles.dart';
import 'package:cult_app/router/router.gr.dart';

@RoutePage()
class RemoveAccountScreen extends StatelessWidget {
  const RemoveAccountScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    debugPrint("RemoveAccountScreen");
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        scrolledUnderElevation: 0,
      ),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          const SizedBox(
            height: 100,
          ),
          const SizedBox(
            width: 315,
            child: Text(
              'Ви впевнені?',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w600,
                height: 0,
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const SizedBox(
            width: 291,
            child: Text(
              'Якщо Ви натиснете кнопку “далі”, всі збережені дані про Ваш акаунт назавжди видаляться.',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontSize: 15,
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w400,
                height: 0.09,
              ),
            ),
          ),
          OutlinedButton(
            onPressed: () => context.router.navigate(AuthRoute(
              recoverPasword: true,
              textMessage: 'Ваш акаунт видалено'.toUpperCase(),
            )),
            style: AppStyles.buttonStadiumBlueWite,
            child: const Text(
              'ДАЛІ',
            ),
          ),
          OutlinedButton(
            onPressed: () => context.router.pop(),
            style: AppStyles.buttonStadiumBlue,
            child: const Text(
              'НАЗАД',
            ),
          ),
          const SizedBox(
            height: 32,
          ),
        ],
      ),
    );
  }
}
