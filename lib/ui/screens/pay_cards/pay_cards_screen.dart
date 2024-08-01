import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:cult_app/resources/constant.dart';

@RoutePage()
class PayCardsScreen extends StatelessWidget {
  const PayCardsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    debugPrint("TiketScreen");
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          'ПЛАТІЖНІ КАРТКИ',
        ),
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
        SvgPicture.asset(Constant.payIcon, width: 100, height: 100),
        const SizedBox(
          width: 271,
          child: Text(
            'У Вас ще немає збережених карт',
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
          height: 32,
        ),
        const SizedBox(
          width: 217,
          child: Text(
            'Вони з’являться після першої покупки',
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
      ],
    );
  }
}
