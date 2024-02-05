import 'package:flutter/material.dart';
import '../domain/entities/Coach.dart';
import './StyledText.dart';

class Teams extends StatelessWidget {
  const Teams({super.key});

  @override
  Widget build(BuildContext context) {
    final teams = [
      Coach(
          id: 1,
          fullName: 'Mario Alejandro Muñoz A',
          photo:
              "https://images.pexels.com/photos/6740292/pexels-photo-6740292.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
      Coach(
          id: 2,
          fullName: 'Candelaria Montiel Boleño',
          photo:
              'https://images.pexels.com/photos/18986392/pexels-photo-18986392/free-photo-of-young-sporty-woman-posing-in-gym.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1')
    ];

    return GridView.builder(
      gridDelegate:
          const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemCount: teams.length,
      itemBuilder: (context, index) {
        return _TeamsState(coach: teams[index]);
      },
    );
  }
}

class _TeamsState extends StatelessWidget {
  final Coach coach;

  const _TeamsState({super.key, required this.coach});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 8.5,
      child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 60.0,
                backgroundImage: NetworkImage(coach.photo),
              ),
              Center(
                child: StyledText(
                    text: coach.fullName,
                    style: const TextStyle(
                        fontSize: 13, fontWeight: FontWeight.bold)),
              )
            ],
          )),
    );
  }
}
