import 'package:flutter/material.dart';
import 'package:cult_app/resources/styles.dart';

class EmailSheetUser extends StatefulWidget {
  const EmailSheetUser(
      {super.key,
      required this.height,
      required this.onSave,
      required this.mailValue});
  final double height;
  final Function(String) onSave;
  final String mailValue;

  @override
  State<EmailSheetUser> createState() => _EmailSheetUserState();
}

class _EmailSheetUserState extends State<EmailSheetUser> {
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
                      Expanded(
                        child: Text(
                          'Після зміни email адреси потрібно буде знову авторизуватись.',
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
                    height: 22,
                  ),
                  Text(
                    'Ввести email'.toUpperCase(),
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 10,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w700,
                      height: 0,
                    ),
                  ),
                  TextFormField(
                    controller: _emailController,
                    validator: (value) {
                      if (value == null ||
                          value.isEmpty ||
                          !value.contains('@') ||
                          !value.contains('.')) {
                        return 'НЕВІРНИЙ Email';
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
                        Navigator.pop(context);
                        widget.onSave(_emailController.text);
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
