import 'package:comicsapp/src/infrastructure/driver_adapter/services/CoachService.dart';
import 'package:comicsapp/src/presentation/Widget/DetailsCoach.dart';
import 'package:comicsapp/src/utils/globals/user.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import './Widget/Caruosel.dart';
import './StyledText.dart';
import './Widget/StyledAvatar.dart';
import './ItemDrawer/ListItem.dart';
import './ItemDrawer/ListItemUser.dart';
import './Widget/work_area.dart';
//import './Teams.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  _HomePage createState() => _HomePage();
}

class _HomePage extends State<Home> {
  String name = "";
  String lastName = "";
  @override
  void initState() {
    super.initState();
    getNameCoach();
  }

  void getNameCoach() {
    var service = CoachService();

    var getName = service.detailCoach(IdCoach);
    for (var item in getName) {
      name = item.name;
      lastName = item.lastName;
    }
  }

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
                Center(
                  child: StyledText(
                      text: 'Bienvenido $name  $lastName',
                      style: const TextStyle(
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
                        const DetailsCoach(),
                        const SizedBox(height: 30),
                        StyledText(
                            text: 'Area de trabajo de $name $lastName',
                            style: const TextStyle(
                                fontSize: 24.5,
                                fontWeight: FontWeight.bold,
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
