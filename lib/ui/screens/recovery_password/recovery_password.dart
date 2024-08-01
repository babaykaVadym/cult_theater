import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:cult_app/data/dependency_container.dart';
import 'package:cult_app/data/repository/account_reposity.dart';
import 'package:cult_app/resources/app_helper.dart';
import 'package:cult_app/resources/styles.dart';
import 'package:cult_app/router/router.gr.dart';
import 'package:cult_app/ui/widgets/inputs/app_textfield.dart';

@RoutePage()
class RecoweryPasswordScreen extends StatefulWidget {
  const RecoweryPasswordScreen({super.key});

  @override
  State<RecoweryPasswordScreen> createState() => _RecoweryPasswordScreenState();
}

class _RecoweryPasswordScreenState extends State<RecoweryPasswordScreen> {
  final _phoneController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    debugPrint("RecoweryPasswordScreen");
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        scrolledUnderElevation: 0,
      ),
      body: Form(
        key: formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 100,
            ),
            const Text(
              'Відновлення паролю',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w600,
                height: 0,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const SizedBox(
              width: 291,
              child: Text(
                'Ми надішлемо ссилку для відновлення на Вашу пошту',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w400,
                  height: 0,
                ),
              ),
            ),
            const SizedBox(
              height: 91,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AppTextfield(
                  controller: _phoneController,
                  hintText: 'ВВЕДІТЬ СВОЮ ПОШТУ',
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Не повинно бути пустим';
                    }
                    return null;
                  },
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const SizedBox(
              height: 32,
            ),
            OutlinedButton(
              onPressed: () async {
                if (formKey.currentState!.validate()) {
                  try {
                    await getIt<AccountRepository>()
                        .resetPassword(email: _phoneController.text);

                    _phoneController.text = '';
                    AppHelper.showToastD(context,
                        text: "ГОТОВО",
                        bgColor: Colors.green,
                        textColor: Colors.white);
                    context.router.push(AuthRoute(recoverPasword: true));
                  } catch (e) {
                    AppHelper.showToastD(context,
                        text: "Щось пішло не так",
                        bgColor: Colors.red,
                        textColor: Colors.white);
                  }
                }
              },
              style: AppStyles.buttonStadiumBlue,
              child: const Text(
                'НАДІСЛАТИ ССИЛКУ',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
