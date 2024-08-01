import 'package:cult_app/resources/styles.dart';
import 'package:flutter/material.dart';

class NameSheetUser extends StatefulWidget {
  const NameSheetUser(
      {super.key,
      required this.height,
      required this.onSave,
      required this.mailValue});
  final double height;
  final Function(String) onSave;
  final String mailValue;

  @override
  State<NameSheetUser> createState() => _NameSheetUserState();
}

class _NameSheetUserState extends State<NameSheetUser> {
  final _nameController = TextEditingController();

  @override
  void initState() {
    _nameController.text = widget.mailValue;
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
                    'Ваше ім’я'.toUpperCase(),
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 10,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w700,
                      height: 0,
                    ),
                  ),
                  TextFormField(
                    controller: _nameController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'НЕВІРНЕ ім’я'.toUpperCase();
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
                        widget.onSave(_nameController.text);
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
