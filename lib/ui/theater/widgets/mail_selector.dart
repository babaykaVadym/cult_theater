import 'package:cult_app/resources/app_helper.dart';
import 'package:cult_app/resources/styles.dart';
import 'package:cult_app/ui/widgets/inputs/app_textfield.dart';
import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';

class EmailSheetAddToTicke extends StatefulWidget {
  const EmailSheetAddToTicke({
    super.key,
    required this.height,
    required this.onSave,
    this.newEmail,
    this.phoneNumber,
  });
  final double height;
  final String? newEmail;
  final String? phoneNumber;
  final Function(String, String) onSave;

  @override
  State<EmailSheetAddToTicke> createState() => _EmailSheetAddToTickeState();
}

class _EmailSheetAddToTickeState extends State<EmailSheetAddToTicke> {
  bool showError = false;
  bool showRemoveText = false;
  final _emailController = TextEditingController();
  final _phoneController = TextEditingController();

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  void initState() {
    _emailController.text = widget.newEmail ?? '';
    _phoneController.text = widget.phoneNumber ?? '';
    super.initState();
  }

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
                  Text(
                    'Ввести номер'.toUpperCase(),
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 10,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w700,
                      height: 0,
                    ),
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
                        width: 315 - 38,
                        maxLength: 10,
                        textInputType: TextInputType.phone,
                        onlyNumbers: true,
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
                    height: 32,
                  ),
                  if (AppHelper.appEmail?.isNotEmpty == true)
                    Row(
                      children: [
                        const Text("Використати пошуту: "),
                        const SizedBox(
                          height: 4,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                            widget.onSave(
                              AppHelper.appEmail!,
                              AppHelper.appPhone ?? '',
                            );
                          },
                          child: Text(
                            AppHelper.appEmail ?? '',
                            style: const TextStyle(
                                color: Colors.blue,
                                fontWeight: FontWeight.w800,
                                fontSize: 16),
                          ),
                        ),
                      ],
                    ),
                  const SizedBox(
                    height: 12,
                  ),

                  OutlinedButton(
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        Navigator.pop(context);
                        widget.onSave(
                            _emailController.text, _phoneController.text);
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
