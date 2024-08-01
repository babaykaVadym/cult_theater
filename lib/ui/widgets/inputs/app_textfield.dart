import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppTextfield extends StatefulWidget {
  final TextEditingController controller;
  final Function(String value)? onChanged;
  final Color? borderHoverColor;
  final String? hintText;
  final bool onlyTextFild;
  final bool isTextField;
  final bool isPassword;
  final bool readOnly;
  final bool isDisabled;
  final FocusNode? focusNode;
  final int? maxLength;
  final EdgeInsets? padding;
  final Function(String value)? onSabmit;
  final String? Function(String?)? validator;
  final TextInputType? textInputType;
  final bool onlyNumbers;
  final List<String>? autofillHints;
  final double width;

  const AppTextfield({
    super.key,
    required this.controller,
    this.onChanged,
    this.isTextField = false,
    this.borderHoverColor,
    this.hintText,
    this.onlyTextFild = false,
    this.readOnly = false,
    this.isDisabled = false,
    this.isPassword = false,
    this.validator,
    this.maxLength,
    this.padding,
    this.onSabmit,
    this.focusNode,
    this.textInputType,
    this.onlyNumbers = false,
    this.autofillHints,
    this.width = 315,
  });

  @override
  State<AppTextfield> createState() => _AppTextfieldState();
}

class _AppTextfieldState extends State<AppTextfield> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.width,
      child: TextFormField(
        controller: widget.controller,
        maxLines: widget.isTextField ? null : 1,
        minLines: widget.isTextField ? 10 : 1,
        obscureText: widget.isPassword,
        focusNode: widget.focusNode,
        autofillHints: widget.autofillHints,
        validator: widget.validator,
        enabled: !widget.isDisabled,
        readOnly: widget.readOnly,
        maxLength: widget.maxLength,
        keyboardType: widget.textInputType,
        inputFormatters: <TextInputFormatter>[
          if (widget.onlyNumbers) FilteringTextInputFormatter.digitsOnly
        ],
        decoration: InputDecoration(
          counterText: "",
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.0),
            borderSide: BorderSide(
              width: 1,
              color: widget.borderHoverColor ?? const Color(0xFF283D6D),
            ),
          ),
          errorBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Colors.red,
              width: 2,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          contentPadding:
              widget.padding ?? const EdgeInsets.only(bottom: 10, left: 20),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.0),
            borderSide: const BorderSide(
              width: 1,
              color: Color(0xFF283D6D),
            ),
          ),
          filled: true,
          hintText: widget.hintText ?? '',
          hintStyle: const TextStyle(
            color: Color(0xFF5F5F5F),
            fontSize: 10,
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.w400,
            height: 0,
          ),
          fillColor: Colors.white,
        ),
        onChanged: (value) {
          if (widget.onChanged != null) widget.onChanged!(value);
        },
        onFieldSubmitted: (value) {
          if (widget.onSabmit != null) widget.onSabmit!(value);
        },
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
  }
}
