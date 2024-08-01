import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:cult_app/ui/widgets/inputs/app_textfield.dart';

@RoutePage()
class EnterPinScreen extends StatefulWidget {
  const EnterPinScreen({super.key});

  @override
  State<EnterPinScreen> createState() => _EnterPinScreenState();
}

class _EnterPinScreenState extends State<EnterPinScreen> {
  final _PHONEController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    debugPrint("RecoweryPasswordScreen");
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        scrolledUnderElevation: 0,
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 312,
          ),
          AppTextfield(
            controller: _PHONEController,
            hintText: 'ВВЕДІТЬ СВІЙ ТЕЛЕФОН',
            onChanged: (value) {},
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            'Не отримав код?',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color(0xFF5F5F5F),
              fontSize: 15,
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.w400,
              height: 0,
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          const Text(
            'Надіслати ще раз',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color(0xFF283D6D),
              fontSize: 15,
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.w600,
              height: 0,
            ),
          ),
        ],
      ),
    );
  }
}
