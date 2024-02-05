import 'package:flutter/material.dart';
import '../StyledText.dart';

class Qualifaction extends StatelessWidget {
  final TextEditingController _controller = TextEditingController();
  Qualifaction({super.key});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Flex(
        direction: Axis.horizontal,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.all(16.0),
            height: 65,
            width: 120,
            decoration: BoxDecoration(
                color: const Color.fromARGB(255, 240, 240, 240),
                borderRadius: BorderRadius.circular(10)),
            child: TextField(
              controller: _controller,
              decoration: const InputDecoration(
                  hintText: '0', border: OutlineInputBorder()),
            ),
          ),
          const SizedBox(width: 16),
          Container(
            padding: const EdgeInsets.all(16.0),
            height: 65,
            width: 70,
            decoration: BoxDecoration(
                color: const Color.fromARGB(255, 240, 240, 240),
                borderRadius: BorderRadius.circular(10)),
            child: const Center(
              child: StyledText(
                  text: 'KG',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
            ),
          ),
          const SizedBox(width: 16),
          Container(
            padding: const EdgeInsets.all(16.0),
            height: 65,
            width: 120,
            decoration: BoxDecoration(
                color: const Color.fromARGB(255, 240, 240, 240),
                borderRadius: BorderRadius.circular(10)),
            child: TextField(
              controller: _controller,
              decoration: const InputDecoration(
                  hintText: '0', border: OutlineInputBorder()),
            ),
          ),
        ],
      ),
    );
  }
}
