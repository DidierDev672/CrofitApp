import 'package:comicsapp/src/domain/entities/Student.dart';
import 'package:comicsapp/src/infrastructure/driver_adapter/services/StudentService.dart';
import 'package:comicsapp/src/presentation/StyledText.dart';
import 'package:comicsapp/src/presentation/Widget/WidgetAppBar.dart';
import 'package:comicsapp/src/utils/globals/user.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import './Student.dart';

class StudentPag extends StatefulWidget {
  const StudentPag({super.key});
  @override
  // ignore: library_private_types_in_public_api
  _StudentPage createState() => _StudentPage();
}

class _StudentPage extends State<StudentPag> {
  List<Student> filterStudent(bool sub) {
    var service = StudentService();
    var student = service.getStudent(IdCoach, sub);
    return student;
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
            appBar: const WidgetAppBar(title: 'ALUMNOS'),
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
