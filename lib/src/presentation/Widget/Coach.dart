import 'package:flutter/material.dart';
import '../StyledText.dart';

class Coach extends StatelessWidget {
  const Coach({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [Colors.grey.shade200, Colors.grey.shade100]),
          borderRadius: BorderRadius.circular(30)),
      width: 250,
      height: 200,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const CircleAvatar(
            radius: 60.5,
            backgroundImage: NetworkImage(
              'https://mixkit.imgix.net/art/preview/mixkit-weeping-man-on-his-own-125-original-large.png?q=80&auto=format%2Ccompress',
            ),
          ),
          const SizedBox(height: 20),
          StyledText(
              text: 'Mario Muñoz',
              style: TextStyle(
                  fontSize: 18.5,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey.shade800))
        ],
      ),
    );
  }
}
