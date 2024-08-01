import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:cult_app/resources/styles.dart';
import 'package:cult_app/router/router.gr.dart';

@RoutePage()
class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key, this.recoverPasword = false, this.textMessage});
  final bool recoverPasword;
  final String? textMessage;

  @override
  Widget build(BuildContext context) {
    debugPrint("AuthScreen");
    return PopScope(
      canPop: false,
      onPopInvoked: (v) async {
        await showDialog(
            context: context,
            builder: (context) => AlertDialog(
                  title: const Text('Ви хочете вийти з додатка?'),
                  actions: <Widget>[
                    TextButton(
                      child: const Text('Ні'),
                      onPressed: () => {Navigator.pop(context, false)},
                    ),
                    TextButton(
                        onPressed: () {
                          SystemNavigator.pop();
                          Navigator.pop(context, true);
                        },
                        child: const Text('Так'))
                  ],
                ));
      },
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            const SizedBox(
              height: 100,
            ),
            Center(
                child: SizedBox(
                    width: 191,
                    height: 71,
                    child: Image.asset(
                      'assets/Logo.png',
                      fit: BoxFit.cover,
                    ))),
            SizedBox(
              height: recoverPasword ? 60 : 150,
            ),
            if (recoverPasword)
              Text(
                textMessage ??
                    'На Вашу пошту надіслано ссилку для відновлення паролю',
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w600,
                  height: 1,
                ),
              ),
            if (recoverPasword)
              const SizedBox(
                height: 78,
              ),
            OutlinedButton(
              onPressed: () async {
                context.router.replace(const MainRoute());
              },
              style: AppStyles.buttonStadiumBlue,
              child: Text("увійти як гість".toUpperCase()),
            ),
            const SizedBox(
              height: 32,
            ),
            OutlinedButton(
              onPressed: () =>
                  context.router.navigate(const RegistrationRoute()),
              style: AppStyles.buttonStadiumBlue,
              child: Text("Зареєструватись".toUpperCase()),
            ),
            const SizedBox(
              height: 32,
            ),
            OutlinedButton(
              onPressed: () => context.router.navigate(LoginRoute()),
              style: AppStyles.buttonStadiumBlue,
              child: Text("Увійти".toUpperCase()),
            ),
            const SizedBox(
              height: 10,
            ),
            GestureDetector(
                onTap: () {
                  context.router.navigate(const RecoweryPasswordRoute());
                },
                child: const Text("Не пам’ятаєш пароль?",
                    style: AppStyles.textBaseStyle))
          ],
        ),
      ),
    );
  }
}
