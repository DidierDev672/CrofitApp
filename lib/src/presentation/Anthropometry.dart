import 'package:flutter/material.dart';
import './Anthropometry/AnthropometryForm.dart';

class Anthropometry extends StatelessWidget {
  const Anthropometry({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(8),
      children: const [AnthropometryForm()],
    );
  }
}
