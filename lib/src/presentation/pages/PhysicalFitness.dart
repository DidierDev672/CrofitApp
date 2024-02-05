import 'package:flutter/material.dart';
import '../StyledText.dart';
import '../Widget/Users.dart';

class PhysicalFitness extends StatelessWidget {
  const PhysicalFitness({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.cyan.shade600,
          title: const Center(
              child: StyledText(
            text: 'CONDITION F.C ',
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
          )),
        ),
        body: ListView(
          children: const [
            Column(
              children: [
                Center(
                    child: StyledText(
                        text: 'USERS',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w900))),
                Users()
              ],
            )
          ],
        ));
  }
}
