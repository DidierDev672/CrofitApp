import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../StyledText.dart';

class ListItem extends StatelessWidget {
  const ListItem({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(padding: EdgeInsets.zero, children: [
      DrawerHeader(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Colors.cyan.shade600, Colors.indigo.shade600]),
              borderRadius:
                  const BorderRadius.only(bottomLeft: Radius.circular(50))),
          child: const StyledText(
              text: 'VALUATION',
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w800,
                  color: Colors.white))),
      const ListTile(
          title: StyledText(
              text: 'Anamnesis',
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500))),
      ListTile(
          title: const StyledText(
              text: 'Physical activity questionnaire',
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500)),
          onTap: () {
            GoRouter.of(context).go('/physical');
          }),
      const ListTile(
        title: StyledText(
            text: 'Eating habits questionnaire',
            style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500)),
      ),
      const ListTile(
        title: StyledText(
            text: 'Physical condition',
            style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500)),
      ),
      const ListTile(
        title: StyledText(
            text: 'Program recommendations',
            style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500)),
      ),
    ]);
  }
}
