import 'package:flutter/material.dart';

class StyledField extends StatelessWidget {
  // ignore: prefer_typing_uninitialized_variables
  final controller;
  final String hintText;
  final bool obscureText;
  // Basic
  final String? label;
  final String? errorMessage;
  final TextInputType? keyboardType;
  final Function(String)? onChanged;
  final String? Function(String?)? validator;
  const StyledField(
      {super.key,
      required this.controller,
      required this.hintText,
      required this.obscureText,
      this.label,
      this.errorMessage,
      this.keyboardType = TextInputType.text,
      this.onChanged,
      this.validator});

  @override
  Widget build(BuildContext context) {
    ///final colors = Theme.of(context).colorScheme;

    final border = OutlineInputBorder(
        borderSide: const BorderSide(color: Colors.white),
        borderRadius: BorderRadius.circular(40));

    const borderRadius = Radius.circular(15);
    return Container(
      //padding: const EdgeInsets.symmetric(horizontal: 10.0),
      decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: const BorderRadius.only(
              topLeft: borderRadius,
              bottomLeft: borderRadius,
              bottomRight: borderRadius),
          boxShadow: [
            BoxShadow(
                color: Colors.white.withOpacity(0.06),
                blurRadius: 10,
                offset: const Offset(0, 5)),
          ]),
      child: TextFormField(
        onChanged: onChanged,
        validator: validator,
        keyboardType: keyboardType,
        style: const TextStyle(fontSize: 20, color: Colors.white),
        decoration: InputDecoration(
            floatingLabelStyle: const TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16),
            enabledBorder: border,
            focusedBorder: border,
            errorBorder: border.copyWith(
                borderSide: const BorderSide(color: Colors.transparent)),
            focusedErrorBorder: border.copyWith(
                borderSide: const BorderSide(color: Colors.transparent)),
            isDense: true,
            label: label != null ? Text(label!) : null,
            hintText: hintText,
            hintStyle: const TextStyle(color: Colors.white),
            errorText: errorMessage,
            focusColor: Colors.blue),
        cursorColor: Colors.white,
        controller: controller,
        obscureText: obscureText,
      ),
    );
  }
}
