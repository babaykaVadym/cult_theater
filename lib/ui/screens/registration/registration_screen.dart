import 'dart:convert';

import 'package:auto_route/auto_route.dart';
import 'package:cult_app/data/dependency_container.dart';
import 'package:cult_app/resources/app_helper.dart';
import 'package:cult_app/resources/screen_utils.dart';
import 'package:cult_app/resources/styles.dart';
import 'package:cult_app/router/router.gr.dart';
import 'package:cult_app/ui/screens/registration/cubit/registration_cubit.dart';
import 'package:cult_app/ui/widgets/inputs/app_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:hive_flutter/hive_flutter.dart';

@RoutePage()
class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen>
    with ScreenUtils {
  final _phoneController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _passwordConfirmController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  void initState() {
    getIt.resetLazySingleton<RegistrationCubit>();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        scrolledUnderElevation: 0,
      ),

      body: BlocProvider(
        create: (context) => getIt<RegistrationCubit>(),
        child: BlocBuilder<RegistrationCubit, RegistrationState>(
            builder: (context, state) {
          handleProgress(state.isLoading, context);
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Form(
              key: formKey,
              child: ListView(
                children: [
                  const SizedBox(
                    height: 53,
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
                    height: 100,
                  ),
                  Row(
                    children: [
                      AppTextfield(
                        controller: TextEditingController(text: '+38'),
                        readOnly: true,
                        width: 62,
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      AppTextfield(
                        controller: _phoneController,
                        hintText: 'ТЕЛЕФОН',
                        width: 315 - 14,
                        maxLength: 10,
                        onlyNumbers: true,
                        textInputType: TextInputType.phone,
                        validator: MultiValidator([
                          RequiredValidator(
                            errorText: 'Неповинно бути пустим',
                          ),
                          MinLengthValidator(
                            10,
                            errorText: 'Невірно введений номер',
                          ),
                        ]),
                        onChanged: (value) {},
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  AppTextfield(
                    controller: _emailController,
                    hintText: 'EMAIL',
                    validator: MultiValidator([
                      RequiredValidator(
                        errorText: 'Неповинно бути пустим',
                      ),
                      EmailValidator(errorText: "Невідповідає пошті"),
                    ]),
                    onChanged: (value) {},
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  AppTextfield(
                    controller: _passwordController,
                    hintText: 'ПАРОЛЬ',
                    isPassword: true,
                    onChanged: (value) {},
                    validator: MultiValidator(
                      [
                        RequiredValidator(
                          errorText: 'Не повинно бути пустим',
                        ),
                        MinLengthValidator(
                          6,
                          errorText: 'Пароль повинен бути не менше 6 символів',
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  AppTextfield(
                      controller: _passwordConfirmController,
                      hintText: 'ПІДТВЕРДИТИ ПАРОЛЬ',
                      isPassword: true,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Не повинно бути пустим';
                        } else if (value.length < 6) {
                          return 'Пароль повинен бути не менше 6 символів';
                        } else if (value != _passwordController.text) {
                          return "Паролі не співпадають";
                        } else
                          return null;
                      }

                      //  MultiValidator(
                      //   [
                      //     RequiredValidator(
                      //       errorText: 'Не повинно бути пустим',
                      //     ),
                      //     MinLengthValidator(
                      //       6,
                      //       errorText: 'Пароль повинен бути не менше 6 символів',
                      //     ),
                      //     PatternValidator(_passwordController.text,
                      //         errorText: "Паролі не співпадають")
                      //   ],
                      // ),
                      ),
                  if (state.errorText.isNotEmpty) ...[
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      state.errorText,
                      textAlign: TextAlign.center,
                      style:
                          AppStyles.textBaseStyle.copyWith(color: Colors.red),
                    ),
                  ],
                  const SizedBox(
                    height: 20,
                  ),
                  OutlinedButton(
                    onPressed: () async {
                      if (formKey.currentState!.validate()) {
                        //   Navigator.pop(context);
                        Box sessionStorage = Hive.box('session');
                        final result =
                            await getIt<RegistrationCubit>().registration(
                          context: context,
                          usrEmail: _emailController.text,
                          usrPassword: _passwordController.text,
                          telephone: "+38${_phoneController.text}",
                          usrPasswordConfirm: _passwordConfirmController.text,
                        );

                        if (result != null) {
                          await Future.wait([
                            sessionStorage.put('user', jsonEncode(result)),
                          ]);
                          await sessionStorage.put("token", result.accessToken);
                          AppHelper.token = result.accessToken;
                          context.router.replace(const MainRoute());
                        } else {
                          AppHelper.showToastD(context,
                              text: "Невірний Логін чи Пароль",
                              bgColor: Colors.red,
                              textColor: Colors.white);
                        }
                      }
                    },
                    style: AppStyles.buttonStadiumBlue,
                    child: const Text(
                      'ЗАРЕЄСТРУВАТИСЬ',
                    ),
                  ),
                  const SizedBox(
                    height: 32,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                          onTap: () {
                            context.router.replace(LoginRoute());
                          },
                          child: const Text('УВІЙТИ',
                              style: AppStyles.textBaseStyle)),
                    ],
                  )
                ],
              ),
            ),
          );
        }),
      ),
    );
  }
}
