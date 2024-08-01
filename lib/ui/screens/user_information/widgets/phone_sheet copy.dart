import 'package:cult_app/resources/styles.dart';
import 'package:cult_app/ui/widgets/inputs/app_textfield.dart';
import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';

class PhoneSheetUser extends StatefulWidget {
  const PhoneSheetUser(
      {super.key,
      required this.height,
      required this.onSave,
      required this.mailValue});
  final double height;
  final Function(String) onSave;
  final String mailValue;

  @override
  State<PhoneSheetUser> createState() => _PhoneSheetUserState();
}

class _PhoneSheetUserState extends State<PhoneSheetUser> {
  final _phoneController = TextEditingController();

  @override
  void initState() {
    _phoneController.text = widget.mailValue;
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
                  Text(
                    'Ваш номер'.toUpperCase(),
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
                    height: 12,
                  ),

                  OutlinedButton(
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        widget.onSave(_phoneController.text);
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
