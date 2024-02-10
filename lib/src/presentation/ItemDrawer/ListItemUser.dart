import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ListItemUser extends StatelessWidget {
  const ListItemUser({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
      child: ListView(
        children: [
          DrawerHeader(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [Colors.cyan.shade500, Colors.indigo.shade600]),
                  borderRadius: BorderRadius.circular(20)),
              child: const CircleAvatar(
                radius: 60.5,
                backgroundImage: NetworkImage(
                  'https://mixkit.imgix.net/art/preview/mixkit-weeping-man-on-his-own-125-original-large.png?q=80&auto=format%2Ccompress',
                ),
              )),
          ListTile(
            title: const Text(
              'Perfiles',
            ),
            onTap: () {
              GoRouter.of(context).go('/profile');
            },
          ),
          ListTile(
            title: const Text('Alumnos'),
            onTap: () {},
          ),
          ListTile(
            title: const Text('Ajustes'),
            onTap: () {},
          ),
          ListTile(
            title: const Text('Cerrar Session'),
            onTap: () {},
          )
        ],
      ),
    );
  }
}
