import 'package:flutter/material.dart';
import '../StyledText.dart';

class Physicalresult extends StatelessWidget {
  const Physicalresult({super.key});

  @override
  Widget build(BuildContext context) {
    return Flex(
      direction: Axis.horizontal,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 35,
          width: 195,
          decoration: BoxDecoration(
              color: const Color.fromARGB(255, 240, 240, 240),
              borderRadius: BorderRadius.circular(10)),
          child: const Center(
            child: StyledText(
                text: 'Result',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          ),
        ),
        const SizedBox(width: 16),
        Container(
          height: 35,
          width: 195,
          decoration: BoxDecoration(
              color: const Color.fromARGB(255, 240, 240, 240),
              borderRadius: BorderRadius.circular(10)),
          child: const Center(
            child: StyledText(
                text: 'Qualification',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          ),
        ),
      ],
    );
  }
}
