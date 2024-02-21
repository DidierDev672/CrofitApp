import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class StyledBottomNavigationBar extends StatelessWidget {
  const StyledBottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 20),
      child: GNav(
          backgroundColor: Colors.grey.shade100,
          color: Colors.orange.shade400,
          activeColor: Colors.grey.shade600,
          iconSize: 18,
          tabBorderRadius: 20,
          style: GnavStyle.google,
          tabBackgroundColor: Colors.grey.shade400,
          padding: const EdgeInsets.all(16),
          tabs: const [
            GButton(
              gap: 10,
              icon: FontAwesomeIcons.house,
              text: 'HOME',
            ),
            GButton(
              gap: 10,
              icon: FontAwesomeIcons.heartPulse,
              text: 'ENTRENAMIENTO',
            ),
            GButton(
                gap: 10, icon: FontAwesomeIcons.chartSimple, text: 'PROGRESO'),
            GButton(
                gap: 10,
                icon: FontAwesomeIcons.appleWhole,
                text: 'ALIMENTACION'),
            GButton(gap: 10, icon: FontAwesomeIcons.lightbulb, text: 'TIPS')
          ]),
    );
  }
}
