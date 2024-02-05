import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  final String text;
  final TextStyle style;

  const StyledText({super.key, required this.text, required this.style});

  @override
  Widget build(BuildContext context) {
    return Center(child: Text(text, style: style));
  }
}
