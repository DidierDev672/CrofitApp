import 'package:flutter/material.dart';

import '../../../shared/widgets/widgets/widgets.dart';

class WorkoutScreen extends StatelessWidget {
  const WorkoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30))),
        backgroundColor: Colors.blue.shade500,
        foregroundColor: Colors.black,
        title: const Text(
          'ENTRENAMIENTO',
          style: TextStyle(fontSize: 16.0, color: Colors.white),
        ),
      ),
      body: const _WorkoutsView(),
      bottomNavigationBar: const StyledBottomNavigationBar(),
    );
  }
}

class _WorkoutsView extends StatelessWidget {
  const _WorkoutsView();

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    gradient: LinearGradient(colors: [
                      Colors.grey.shade300,
                      Colors.grey.shade200,
                      Colors.grey.shade100
                    ])),
                child: const Center(
                  child: Text(
                    'Usuarios',
                    style:
                        TextStyle(fontSize: 35.0, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                height: 70,
                decoration: BoxDecoration(
                    gradient: const LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Color.fromARGB(255, 47, 124, 147),
                          Color.fromARGB(255, 50, 59, 147),
                        ]),
                    borderRadius: BorderRadius.circular(15)),
                child: const Center(
                  child: Text(
                    'SESIONES GUARDADAS',
                    style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                height: 70,
                decoration: BoxDecoration(
                    gradient: const LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Color.fromARGB(255, 47, 124, 147),
                          Color.fromARGB(255, 50, 59, 147),
                        ]),
                    borderRadius: BorderRadius.circular(15)),
                child: const Center(
                  child: Text(
                    'PLANES GUARDADOS',
                    style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
              ),
            )
          ],
        )
      ],
    );
  }
}
