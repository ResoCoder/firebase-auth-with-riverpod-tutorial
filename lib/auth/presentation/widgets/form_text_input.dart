import 'package:firebase_auth_with_riverpod_tutorial/core/presentation/theming/custom_colors.dart';
import 'package:flutter/material.dart';

class FormTextInput extends StatelessWidget {
  final String? label;
  final String? hintText;
  final TextAlign? textAlign;
  final IconData? icon;
  final bool? secure;
  final String? Function(String?)? validator;
  final TextEditingController controller;
  final InputBorder? border;
  final InputBorder? errorBorder;
  final InputBorder? focusedBorder;
  final InputBorder? enabledBorder;
  const FormTextInput({
    Key? key,
    this.label,
    this.hintText,
    this.textAlign,
    this.icon,
    this.validator,
    required this.controller,
    this.secure,
    this.border = const OutlineInputBorder(),
    this.errorBorder = const OutlineInputBorder(
      borderSide: BorderSide(
        color: CustomColors.mediumRed,
        width: 2,
      ),
    ),
    this.focusedBorder = const OutlineInputBorder(
      borderSide: BorderSide(
        color: CustomColors.mediumYellow,
        width: 2,
      ),
    ),
    this.enabledBorder = const OutlineInputBorder(
      borderSide: BorderSide(
        color: CustomColors.lightBlue,
        width: 2,
      ),
    ),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: TextFormField(
        textAlign: textAlign ?? TextAlign.start,
        controller: controller,
        validator: validator,
        style: const TextStyle(
          color: Colors.white70,
          fontSize: 18,
        ),
        obscureText: secure == true ? true : false,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: const TextStyle(
            color: Colors.white70,
          ),
          border: border,
          errorBorder: errorBorder,
          focusedBorder: focusedBorder,
          enabledBorder: enabledBorder,
          suffixIcon: icon != null
              ? Icon(
                  icon,
                  color: CustomColors.lightBlue,
                )
              : null,
          errorStyle: const TextStyle(fontSize: 14),
          label: label != null
              ? Text(
                  label!,
                  style: const TextStyle(color: Colors.white70),
                )
              : null,
        ),
      ),
    );
  }
}
