import 'package:flutter/material.dart';
import '../StyledText.dart';

class SubPhysical extends StatelessWidget {
  final String title;

  SubPhysical({required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
          color: const Color.fromARGB(255, 240, 240, 240),
          borderRadius: BorderRadius.circular(10)),
      child: StyledText(
          text: title,
          style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500)),
    );
  }
}
