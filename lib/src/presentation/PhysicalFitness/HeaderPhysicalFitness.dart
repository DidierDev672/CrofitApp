import 'package:flutter/material.dart';
import '../StyledText.dart';

class HeaderPhysicalFitness extends StatelessWidget {
  const HeaderPhysicalFitness({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35,
      width: 350,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        gradient: LinearGradient(
            colors: [Colors.cyan.shade800, Colors.indigo.shade900]),
      ),
      child: const Center(
        child: StyledText(
            text: 'Speedometer',
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white)),
      ),
    );
  }
}
