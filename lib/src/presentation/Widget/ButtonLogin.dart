import 'package:flutter/material.dart';

class ButtonLogin extends StatelessWidget {
  final Function()? onTap;
  const ButtonLogin({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(15),
        margin: const EdgeInsets.symmetric(horizontal: 25),
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(20)),
        child: Center(
          child: Text(
            'Iniciar Session',
            style: TextStyle(
                fontSize: 16,
                color: Colors.blue.shade900,
                fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
