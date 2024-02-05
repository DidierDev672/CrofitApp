import 'package:flutter/material.dart';
import './Widget/Caruosel.dart';
import './StyledText.dart';
import './ItemDrawer/ListItem.dart';
import './ItemDrawer/ListItemUser.dart';
import './Widget/Coach.dart';
//import './Teams.dart';

class Index extends StatelessWidget {
  const Index({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white70,
          title: const Center(
              child: StyledText(
                  text: 'Crorp cfit',
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic))),
          actions: <Widget>[
            IconButton(
              icon: const CircleAvatar(
                backgroundImage: NetworkImage(
                  'https://mixkit.imgix.net/art/preview/mixkit-weeping-man-on-his-own-125-original-large.png?q=80&auto=format%2Ccompress',
                ),
              ),
              onPressed: () {
                showModalBottomSheet(
                  context: context,
                  builder: (context) => const ListItemUser(),
                );
              },
            )
          ],
        ),
        drawer: const Drawer(child: ListItem()),
        body: ListView(
          children: const [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Carousel(),
                SizedBox(height: 10),
                Center(
                  child: StyledText(
                      text: 'Bienvenido Mario muñoz',
                      style: TextStyle(
                          fontSize: 23.5, fontWeight: FontWeight.bold)),
                ),
                SizedBox(height: 20),
                Coach()
              ],
            )
          ],
        ));
  }
}
