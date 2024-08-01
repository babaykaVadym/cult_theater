import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:cult_app/resources/constant.dart';

@RoutePage()
class MessageScreen extends StatelessWidget {
  const MessageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    debugPrint("MessageScreen");
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: const Text("Повідомлення"),
          centerTitle: true,
          leading: const SizedBox(),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 100,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(Constant.messageBig, width: 100, height: 100),
              ],
            ),
            const SizedBox(
              height: 12,
            ),
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
        ));
  }
}
