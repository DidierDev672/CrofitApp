import 'package:comicsapp/src/presentation/StyledText.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class WorkArea extends StatefulWidget {
  const WorkArea({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _WorkAreaState createState() => _WorkAreaState();
}

class _WorkAreaState extends State<WorkArea> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          padding: const EdgeInsets.all(20.0),
          decoration: BoxDecoration(
              border: Border.all(color: Colors.white),
              borderRadius: BorderRadius.circular(30.0),
              gradient: LinearGradient(colors: [
                Colors.red.shade500,
                Colors.red.shade400,
                Colors.red.shade300
              ])),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const StyledText(
                      text: 'Entrenamientos',
                      style: TextStyle(
                          fontSize: 22.5,
                          fontWeight: FontWeight.w500,
                          color: Colors.white)),
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Colors.red.shade200),
                    child: const Center(
                      child: FaIcon(
                        FontAwesomeIcons.dumbbell,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              const StyledText(
                  text: '20 Entrenamientos',
                  style: TextStyle(
                      fontSize: 18.5,
                      fontWeight: FontWeight.w500,
                      fontStyle: FontStyle.normal,
                      color: Colors.white)),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const StyledText(
                      text: '20 Ejercicio',
                      style: TextStyle(
                          fontSize: 15.5,
                          fontWeight: FontWeight.w400,
                          fontStyle: FontStyle.italic,
                          color: Colors.white)),
                  const SizedBox(width: 20),
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Colors.red.shade200),
                    child: Center(
                      child: IconButton(
                          onPressed: () {
                            GoRouter.of(context).go('/workout');
                          },
                          icon: const FaIcon(
                            FontAwesomeIcons.arrowRight,
                            color: Colors.white,
                          )),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
        const SizedBox(height: 10),
        Container(
          padding: const EdgeInsets.all(20.0),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              gradient: LinearGradient(colors: [
                Colors.blue.shade500,
                Colors.blue.shade300,
                Colors.blue.shade200
              ]),
              border: Border.all(color: Colors.white)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const StyledText(
                      text: 'Alumnos',
                      style: TextStyle(
                          fontSize: 22.5,
                          fontWeight: FontWeight.w500,
                          fontStyle: FontStyle.normal,
                          color: Colors.white)),
                  const SizedBox(width: 10),
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Colors.blue.shade300),
                    child: const Center(
                      child: FaIcon(
                        FontAwesomeIcons.graduationCap,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              const StyledText(
                  text: '200 Alumnos',
                  style: TextStyle(
                      fontSize: 18.5,
                      fontWeight: FontWeight.w500,
                      color: Colors.white)),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const StyledText(
                      text: '170 activos',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15.5,
                          fontWeight: FontWeight.w400,
                          fontStyle: FontStyle.italic)),
                  const SizedBox(width: 10),
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Colors.blue.shade300),
                    child: Center(
                      child: IconButton(
                          onPressed: () {
                            GoRouter.of(context).go('/student');
                          },
                          icon: const FaIcon(
                            FontAwesomeIcons.arrowRight,
                            color: Colors.white,
                          )),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
        const SizedBox(height: 10),
        Container(
          padding: const EdgeInsets.all(20.0),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              gradient: LinearGradient(colors: [
                Colors.purple.shade500,
                Colors.purple.shade300,
                Colors.purple.shade200
              ]),
              border: Border.all(color: Colors.white)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const StyledText(
                      text: 'Inactivos',
                      style: TextStyle(
                          fontSize: 22.5,
                          fontWeight: FontWeight.w500,
                          fontStyle: FontStyle.normal,
                          color: Colors.white)),
                  const SizedBox(width: 10),
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Colors.purple.shade200),
                    child: const Center(
                      child: FaIcon(
                        FontAwesomeIcons.circleExclamation,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              const StyledText(
                  text: '30 Inactivos',
                  style: TextStyle(
                      fontSize: 18.5,
                      fontWeight: FontWeight.w500,
                      color: Colors.white)),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const StyledText(
                      text: '170 activos',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15.5,
                          fontWeight: FontWeight.w400,
                          fontStyle: FontStyle.italic)),
                  const SizedBox(width: 10),
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Colors.purple.shade200),
                    child: const Center(
                      child: IconButton(
                          onPressed: null,
                          icon: FaIcon(
                            FontAwesomeIcons.arrowRight,
                            color: Colors.white,
                          )),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}
