import 'dart:convert';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_phoenix/flutter_phoenix.dart';
import 'package:cult_app/data/dependency_container.dart';
import 'package:cult_app/data/repository/auth.dart';
import 'package:cult_app/resources/app_helper.dart';
import 'package:cult_app/resources/styles.dart';
import 'package:cult_app/router/router.gr.dart';
import 'package:cult_app/ui/widgets/inputs/app_textfield.dart';
import 'package:hive_flutter/hive_flutter.dart';

@RoutePage()
class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key, this.canGoBack = true});
  final bool canGoBack;

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _passwordController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    debugPrint("LoginScreen");
    return PopScope(
      canPop: widget.canGoBack,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          scrolledUnderElevation: 0,
          leading: widget.canGoBack
              ? GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: const Icon(
                    Icons.arrow_back,
                    size: 30,
                  ))
              : const SizedBox(),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32),
          child: Form(
            key: formKey,
            child: ListView(
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
                const SizedBox(
                  height: 150,
                ),
                AppTextfield(
                  controller: _emailController,
                  hintText: 'EMAIL',
                  onChanged: (value) {},
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Не повинно бути пустим';
                    }
                    return null;
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                AppTextfield(
                  controller: _passwordController,
                  autofillHints: const [AutofillHints.password],
                  hintText: 'ПАРОЛЬ',
                  onChanged: (value) {},
                  isPassword: true,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Не повинно бути пустим';
                    }
                    return null;
                  },
                ),
                const SizedBox(
                  height: 32,
                ),
                OutlinedButton(
                  onPressed: () async {
                    if (formKey.currentState!.validate()) {
                      Box sessionStorage = Hive.box('session');
                      try {
                        final result = await getIt<AuthRepository>().login(
                          email: _emailController.text,
                          password: _passwordController.text,
                        );
                        if (result != null) {
                          AppHelper.token = result.accessToken;
                          await Future.wait([
                            sessionStorage.put('user', jsonEncode(result)),
                          ]);
                          sessionStorage.put("token", result.accessToken);

                          try {
                            Phoenix.rebirth(context);
                          } catch (e) {
                            //
                          }
                          context.router.removeLast();

                          context.router.replaceAll([const MainRoute()]);
                        } else {
                          AppHelper.showToastD(context,
                              text: "Невірний Логін чи Пароль",
                              bgColor: Colors.red,
                              textColor: Colors.white);
                        }
                      } catch (e) {
                        AppHelper.showToastD(context,
                            text: "Щось пішло не так",
                            bgColor: Colors.red,
                            textColor: Colors.white);
                      }

                      // Navigator.pop(context);
                    }
                  },
                  style: AppStyles.buttonStadiumBlue,
                  child: Text("Увійти".toUpperCase()),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                        onTap: () {
                          context.router.push(const RecoweryPasswordRoute());
                        },
                        child: const Text("Не пам’ятаєш пароль?",
                            style: AppStyles.textBaseStyle)),
                  ],
                ),
                const SizedBox(
                  height: 40,
                ),
                GestureDetector(
                  onTap: () {
                    context.router.push(const RegistrationRoute());
                  },
                  child: const Text(
                    'ЗАРЕЄСТРУВАТИСЬ',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFF5F5F5F),
                      fontSize: 10,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w600,
                      height: 0,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
