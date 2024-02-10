import 'package:comicsapp/src/domain/entities/Student.dart';
import 'package:comicsapp/src/presentation/StyledText.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import './Student.dart';

class StudentPag extends StatelessWidget {
  const StudentPag({super.key});
  @override
  Widget build(BuildContext context) {
    final students = [
      Student(
          id: 1,
          name: 'Didier',
          lastName: 'Arias',
          dni: '1038134311',
          email: 'ariasdev672@gmail.com',
          subscription: false,
          photo: ''),
      Student(
          id: 2,
          name: 'Kevin',
          lastName: 'Torres',
          dni: '1038134311',
          email: 'imkevintorres@gmail.com',
          subscription: true,
          photo: ''),
      Student(
          id: 3,
          name: 'Jhorlenys',
          lastName: 'Peña',
          dni: '0986345567',
          email: 'Imjhorlenyspeña@gmail.com',
          subscription: false,
          photo: ''),
      Student(
          id: 4,
          name: 'John',
          lastName: 'Doe',
          dni: '1234556789',
          email: 'john.doe@gmail.com',
          subscription: true,
          photo: ''),
      Student(
          id: 5,
          name: 'Jane',
          lastName: 'Smith',
          dni: '0987654321',
          email: 'jane.smith@gmail.com',
          subscription: false,
          photo: ''),
      Student(
          id: 6,
          name: 'Michael',
          lastName: 'Johnson',
          dni: '4567890123',
          email: 'michael.johnson@gmail.com',
          subscription: true,
          photo: ''),
      Student(
          id: 7,
          name: 'Emily',
          lastName: 'Williams',
          dni: '3210987654',
          email: 'emily.williams@example.com',
          subscription: true,
          photo: '')
    ];

    List<Student> filterStudent(bool subcreation) {
      List<Student> studentFilter = [];
      for (var purpil in students) {
        if (purpil.subscription == subcreation) {
          studentFilter.add(purpil);
        }
      }
      return studentFilter;
    }

    return DefaultTabController(
        length: 2,
        child: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.blue.shade500,
              foregroundColor: Colors.white,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30)),
              ),
              centerTitle: true,
              title: const StyledText(
                  text: 'ALUMNOS',
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold)),
              actions: [
                CircleAvatar(
                  backgroundColor: Colors.blue.shade100,
                  radius: 40.5,
                  child: const StyledText(text: 'MM', style: TextStyle()),
                )
              ],
            ),
            body: Column(children: [
              TabBar(labelColor: Colors.blue.shade400, tabs: const [
                Tab(
                    icon: FaIcon(FontAwesomeIcons.person, color: Colors.black),
                    text: 'Activos'),
                Tab(
                  icon: FaIcon(FontAwesomeIcons.dumpsterFire,
                      color: Colors.black),
                  text: 'No Activos',
                )
              ]),
              Expanded(
                  child: TabBarView(children: [
                StudentList(students: filterStudent(true)),
                StudentList(students: filterStudent(false))
              ]))
            ])));
  }
}
