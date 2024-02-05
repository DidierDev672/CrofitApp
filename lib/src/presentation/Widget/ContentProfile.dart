import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../StyledText.dart';

class ContentProfile extends StatelessWidget {
  const ContentProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ListTile(
            leading: Container(
              width: 30,
              height: 30,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: Colors.orange.withOpacity(0.1)),
              child: Center(
                child: FaIcon(FontAwesomeIcons.person,
                    color: Colors.orange.shade400),
              ),
            ),
            title: const StyledText(
                text: 'Mario Muñoz',
                style: TextStyle(fontSize: 16.5, fontWeight: FontWeight.w300))),
        ListTile(
            leading: Container(
              width: 30,
              height: 30,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: Colors.orange.withOpacity(0.1)),
              child: Center(
                child: FaIcon(FontAwesomeIcons.addressCard,
                    color: Colors.orange.shade400),
              ),
            ),
            title: const StyledText(
                text: '1.234.876.311',
                style: TextStyle(fontSize: 16.5, fontWeight: FontWeight.w300))),
        ListTile(
            leading: Container(
              width: 30,
              height: 30,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: Colors.orange.withOpacity(0.1)),
              child: Center(
                child: FaIcon(FontAwesomeIcons.piedPiper,
                    color: Colors.orange.shade400),
              ),
            ),
            title: const StyledText(
                text: '35 Años',
                style: TextStyle(fontSize: 16.5, fontWeight: FontWeight.w300))),
        ListTile(
            leading: Container(
              width: 30,
              height: 30,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: Colors.orange.withOpacity(0.1)),
              child: Center(
                child: FaIcon(FontAwesomeIcons.phone,
                    color: Colors.orange.shade400),
              ),
            ),
            title: const StyledText(
                text: '3024567898',
                style: TextStyle(fontSize: 16.5, fontWeight: FontWeight.w300))),
        ListTile(
            leading: Container(
              width: 30,
              height: 30,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: Colors.orange.withOpacity(0.1)),
              child: Center(
                child: FaIcon(FontAwesomeIcons.mapLocation,
                    color: Colors.orange.shade400),
              ),
            ),
            title: const StyledText(
                text: 'Caucasia-Antioquia',
                style: TextStyle(fontSize: 16.5, fontWeight: FontWeight.w300))),
        ListTile(
            leading: Container(
              width: 30,
              height: 30,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: Colors.orange.withOpacity(0.1)),
              child: Center(
                child: FaIcon(FontAwesomeIcons.googlePlus,
                    color: Colors.orange.shade400),
              ),
            ),
            title: const StyledText(
                text: 'Immariomuñoz702@gmail.com',
                style: TextStyle(fontSize: 16.5, fontWeight: FontWeight.w300))),
      ],
    );
  }
}
