import 'package:comicsapp/src/presentation/StyledText.dart';
import 'package:flutter/material.dart';

class ButtonLogin extends StatelessWidget {
  final void Function()? onPressed;
  final String text;
  final Color? buttonColor;
  const ButtonLogin(
      {super.key, this.onPressed, required this.text, this.buttonColor});

  @override
  Widget build(BuildContext context) {
    const radius = Radius.circular(10);
    return FilledButton(
      style: FilledButton.styleFrom(
        backgroundColor: buttonColor,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomLeft: radius, bottomRight: radius, topLeft: radius)),
      ),
      onPressed: onPressed,
      child: StyledText(
          text: text,
          style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.blue.shade600)),
    );
  }
}
