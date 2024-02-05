import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../Widget/BodyProfile.dart';
import '../StyledText.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade500,
        foregroundColor: Colors.white,
        elevation: 5.0,
        centerTitle: true,
        title: const StyledText(
            text: 'PERFIL',
            style: TextStyle(fontSize: 14.5, fontWeight: FontWeight.bold)),
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(40),
                bottomRight: Radius.circular(40))),
        actions: const [
          CircleAvatar(
            radius: 60.5,
            backgroundImage: NetworkImage(
              'https://mixkit.imgix.net/art/preview/mixkit-weeping-man-on-his-own-125-original-large.png?q=80&auto=format%2Ccompress',
            ),
          ),
        ],
      ),
      body: ListView(
        children: const [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 20),
              CircleAvatar(
                radius: 60.5,
                backgroundImage: NetworkImage(
                  'https://mixkit.imgix.next/art/preview/mixkit-weeping-man-on-his-own-125-original-large.png?q=80&auto=format%2Ccompress',
                ),
                child: FaIcon(
                  FontAwesomeIcons.pencil,
                  size: 20.0,
                ),
              ),
              SizedBox(height: 10),
              BodyProfile()
            ],
          )
        ],
      ),
    );
  }
}
