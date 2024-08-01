import 'package:flutter/material.dart';
import 'package:cult_app/resources/styles.dart';

class OldPasswordSheetUser extends StatefulWidget {
  const OldPasswordSheetUser(
      {super.key,
      required this.height,
      required this.onSave,
      required this.mailValue});
  final double height;
  final Function() onSave;
  final String mailValue;

  @override
  State<OldPasswordSheetUser> createState() => _OldPasswordSheetUserState();
}

class _OldPasswordSheetUserState extends State<OldPasswordSheetUser> {
  bool showError = false;
  bool showRemoveText = false;
  final _emailController = TextEditingController();

  @override
  void initState() {
    _emailController.text = widget.mailValue;
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
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Введіть свій пароль',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
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
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 313,
                        child: Text(
                          'Щоб переконатися, що це Ваш акаунт, введіть, будь ласка, Ваш пароль',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 13,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  TextFormField(
                    controller: _emailController,
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

                  OutlinedButton(
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        widget.onSave();
                        Navigator.pop(context);
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
