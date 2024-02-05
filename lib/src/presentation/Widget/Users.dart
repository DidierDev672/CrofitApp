import 'package:flutter/material.dart';
import '../StyledText.dart';

class Users extends StatelessWidget {
  const Users({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          contentPadding: const EdgeInsets.all(10),
          visualDensity: VisualDensity.compact,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24),
          ),
          title: const StyledText(
              text: 'Andrea Zapata Bedoya',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
        ),
        ListTile(
          contentPadding: const EdgeInsets.all(10),
          visualDensity: VisualDensity.compact,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24),
          ),
          title: const StyledText(
              text: 'Didier Arias',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
        ),
        ListTile(
          contentPadding: const EdgeInsets.all(10),
          visualDensity: VisualDensity.compact,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24),
          ),
          title: const StyledText(
              text: 'Carolina Zapata',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
        ),
        ListTile(
          contentPadding: const EdgeInsets.all(10),
          visualDensity: VisualDensity.compact,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24),
          ),
          title: const StyledText(
              text: 'Kevin Stiven Torres',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
        ),
        ListTile(
          contentPadding: const EdgeInsets.all(10),
          visualDensity: VisualDensity.compact,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24),
          ),
          title: const StyledText(
              text: 'Luis Ayala',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
        ),
        ListTile(
          contentPadding: const EdgeInsets.all(10),
          visualDensity: VisualDensity.compact,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24),
          ),
          title: const StyledText(
              text: 'Juan pablo santana',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
        ),
      ],
    );
  }
}
