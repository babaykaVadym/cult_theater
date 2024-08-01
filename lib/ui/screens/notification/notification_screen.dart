import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:cult_app/resources/constant.dart';

@RoutePage()
class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    debugPrint("TiketScreen");
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          'ПОВІДОМЛЕННЯ',
        ),
        centerTitle: true,
        leading: const SizedBox(),
      ),
      body: const Column(
        children: [],
      ),
    );
  }

  emptyState() {
    return Column(
      children: [
        const SizedBox(
          height: 100,
        ),
        SvgPicture.asset(Constant.notification, width: 100, height: 100),
        const SizedBox(
          width: 271,
          child: Text(
            'У Вас немає нових повідомлень',
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
      ],
    );
  }
}
