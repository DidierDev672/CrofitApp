import 'package:comicsapp/src/presentation/StyledText.dart';
import 'package:flutter/material.dart';
import '../../domain/entities/Student.dart';

class StudentList extends StatelessWidget {
  final List<Student> students;
  const StudentList({super.key, required this.students});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: students.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                    Colors.grey.shade300,
                    Colors.grey.shade200,
                    Colors.grey.shade200
                  ]),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        offset: const Offset(0, 4),
                        blurRadius: 10,
                        spreadRadius: 2)
                  ],
                  borderRadius: BorderRadius.circular(20)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    backgroundImage: NetworkImage(students[index].photo),
                  ),
                  StyledText(
                      text: students[index].name,
                      style: const TextStyle(
                          fontSize: 16.5, fontWeight: FontWeight.w500)),
                  const SizedBox(height: 5),
                  StyledText(
                      text: students[index].lastName,
                      style: const TextStyle(
                          fontSize: 16.5,
                          fontWeight: FontWeight.w400,
                          fontStyle: FontStyle.italic)),
                  const SizedBox(height: 5),
                  Container(
                    padding: const EdgeInsets.all(10.5),
                    child: students[index].subscription == false
                        ? const Inactive()
                        : const Active(),
                  )
                ],
              ),
            ),
          );
        });
  }
}

class Active extends StatelessWidget {
  const Active({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      height: 40,
      padding: const EdgeInsets.all(10.5),
      decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            Colors.blue.shade500,
            Colors.blue.shade300,
            Colors.blue.shade200
          ]),
          borderRadius: BorderRadius.circular(20)),
      child: const StyledText(
          text: 'Activo',
          style: TextStyle(
              fontSize: 15.5,
              fontWeight: FontWeight.w500,
              color: Colors.white)),
    );
  }
}

class Inactive extends StatelessWidget {
  const Inactive({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 40,
      padding: const EdgeInsets.all(10.5),
      decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            Colors.red.shade500,
            Colors.red.shade300,
            Colors.red.shade200
          ]),
          borderRadius: BorderRadius.circular(20)),
      child: const StyledText(
          text: 'No activo',
          style: TextStyle(
              fontSize: 15.5,
              fontWeight: FontWeight.w500,
              color: Colors.white)),
    );
  }
}
