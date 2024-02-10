import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import './Widget/Caruosel.dart';
import './StyledText.dart';
import './Widget/StyledAvatar.dart';
import './ItemDrawer/ListItem.dart';
import './ItemDrawer/ListItemUser.dart';
import './Widget/work_area.dart';
//import './Teams.dart';

class Home extends StatelessWidget {
  const Home({super.key});

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
              icon: const StyledAvatar(
                radius: 30.5,
                imageUrl:
                    'https://mixkit.imgix.net/art/preview/mixkit-weeping-man-on-his-own-125-original-large.png?q=80&auto=format%2Ccompress',
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
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Carousel(),
                const SizedBox(height: 10),
                const Center(
                  child: StyledText(
                      text: 'Bienvenido Mario muñoz',
                      style: TextStyle(
                          fontSize: 23.5, fontWeight: FontWeight.bold)),
                ),
                const SizedBox(height: 20),
                Container(
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          colors: [
                            Colors.grey.shade200,
                            Colors.grey.shade200,
                            Colors.grey.shade100,
                            Colors.white
                          ],
                          begin: FractionalOffset.topCenter,
                          end: FractionalOffset.bottomCenter),
                      borderRadius: BorderRadius.circular(20)),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        const StyledAvatar(
                          radius: 40.5,
                          imageUrl:
                              'https://mixkit.imgix.net/art/preview/mixkit-weeping-man-on-his-own-125-original-large.png?q=80&auto=format%2Ccompress',
                          initials: 'Mario Muñoz',
                        ),
                        StyledText(
                            text: 'Mario muñoz',
                            style: TextStyle(
                                fontSize: 18.5,
                                fontWeight: FontWeight.w600,
                                fontStyle: FontStyle.italic,
                                color: Colors.grey.shade700)),
                        const SizedBox(height: 30),
                        const StyledText(
                            text: 'Area de trabajo',
                            style: TextStyle(
                                fontSize: 24.5,
                                fontWeight: FontWeight.w400,
                                color: Colors.black)),
                        const SizedBox(height: 20),
                        const WorkArea(),
                      ],
                    ),
                  ),
                ),
              ],
            )
          ],
        ));
  }
}
