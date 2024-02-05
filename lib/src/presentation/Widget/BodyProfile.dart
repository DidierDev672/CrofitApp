import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../StyledText.dart';
import './ContentProfile.dart';
import './FormProfile.dart';

// ignore: must_be_immutable
class BodyProfile extends StatefulWidget {
  const BodyProfile({super.key});

  @override
  _BodyProfile createState() => _BodyProfile();
}

class _BodyProfile extends State<BodyProfile> {
  bool isForm = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [Colors.grey.shade100, Colors.grey.shade300]),
          borderRadius: BorderRadius.circular(20)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const StyledText(
            text: 'Mario Muñoz',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 2),
          const StyledText(
              text: 'Immariomuñoz702@gmail.com',
              style: TextStyle(fontSize: 13.5, fontWeight: FontWeight.w500)),
          SizedBox(
            width: 200,
            child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    isForm = !isForm;
                  });
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue.shade600,
                    side: BorderSide.none,
                    shape: const StadiumBorder()),
                child: const StyledText(
                    text: 'Editar perfil',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 14.5,
                        fontWeight: FontWeight.w600))),
          ),
          const SizedBox(height: 10),
          const Divider(),
          const StyledText(
              text: 'Datos básicos',
              style: TextStyle(fontSize: 18.5, fontWeight: FontWeight.w600)),
          const SizedBox(height: 10),
          Container(
            child:
                isForm == false ? const ContentProfile() : const FormProfile(),
          ),
          const Divider(),
          ListTile(
            leading: Container(
              width: 30,
              height: 30,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: Colors.red.withOpacity(0.1)),
              child: Center(
                child: FaIcon(
                  FontAwesomeIcons.rightFromBracket,
                  color: Colors.red.shade300,
                ),
              ),
            ),
            title: const StyledText(
                text: 'Cerrar Session',
                style: TextStyle(fontSize: 15.5, fontWeight: FontWeight.bold)),
            trailing: Container(
              width: 30,
              height: 30,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: Colors.red.withOpacity(0.1)),
              child: const Center(
                child: FaIcon(
                  FontAwesomeIcons.angleRight,
                  size: 18.0,
                  color: Colors.red,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
