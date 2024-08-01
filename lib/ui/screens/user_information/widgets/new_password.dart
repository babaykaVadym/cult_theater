import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cult_app/data/dependency_container.dart';
import 'package:cult_app/data/repository/account_reposity.dart';
import 'package:cult_app/resources/app_helper.dart';
import 'package:cult_app/resources/screen_utils.dart';
import 'package:cult_app/resources/styles.dart';

import '../../../../router/router.gr.dart';

class NewPasswordSheetUser extends StatefulWidget {
  const NewPasswordSheetUser({
    super.key,
    required this.height,
    required this.onSave,
  });
  final double height;
  final Function() onSave;

  @override
  State<NewPasswordSheetUser> createState() => _NewPasswordSheetUserState();
}

class _NewPasswordSheetUserState extends State<NewPasswordSheetUser>
    with ScreenUtils {
  bool showError = false;
  bool showRemoveText = false;
  final _newPassConfirmController = TextEditingController();
  final _newPassController = TextEditingController();
  final _oldPassController = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SizedBox(
        height: widget.height,
        child: Form(
          key: formKey,
          child: ListView(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: const Icon(
                      Icons.keyboard_arrow_down,
                      size: 32,
                    ))
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(32.0),
              child: Column(
                children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Text(
                          'Після зміни паролю потрібно буде знову авторизуватись.',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 13,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w400,
                            height: 1,
                          ),
                        ),
                      )
                    ],
                  ),

                  const SizedBox(
                    height: 22,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Введіть свій пароль',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w700,
                          height: 0,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  TextFormField(
                    controller: _oldPassController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Не повинно бути пустим';
                      }
                      return null;
                    },
                  ),

                  const SizedBox(
                    height: 12,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Новий пароль'.toUpperCase(),
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w700,
                          height: 0,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 12,
                  ),

                  TextFormField(
                    controller: _newPassController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Не повинно бути пустим';
                      }
                      return null;
                    },
                  ),

                  const SizedBox(
                    height: 12,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Повторіть новий пароль'.toUpperCase(),
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w700,
                          height: 0,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 12,
                  ),

                  TextFormField(
                    controller: _newPassConfirmController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Не повинно бути пустим';
                      }

                      if (value != _newPassController.text) {
                        return 'Не співпадають паролі';
                      }
                      return null;
                    },
                  ),

                  const SizedBox(
                    height: 12,
                  ),
                  OutlinedButton(
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        try {
                          handleProgress(true, context);
                          getIt<AccountRepository>().changePassword(
                              currentPassword: _oldPassController.text,
                              newPassword: _newPassController.text,
                              confirmNewPassword:
                                  _newPassConfirmController.text);
                          // Navigator.pop(context);
                          AppHelper.showToastD(context,
                              text: "Збережено",
                              bgColor: Colors.green,
                              textColor: Colors.white);
                          handleProgress(false, context);
                          context.router.replace(LoginRoute(canGoBack: false));
                        } catch (e) {
                          handleProgress(false, context);
                          AppHelper.showToastD(context,
                              text: "Щось пішло не так",
                              bgColor: Colors.red,
                              textColor: Colors.white);
                        }
                        //  Navigator.pop(context);
                      }
                    },
                    style: AppStyles.buttonStadiumBlueWite,
                    child: Text('Зберегти'.toUpperCase()),
                  ),

                  const SizedBox(
                    height: 20,
                  ),
                  // if (formKey.currentState!.validate()) {
                ],
              ),
            )
          ]),
        ),
      ),
    );
  }
}
