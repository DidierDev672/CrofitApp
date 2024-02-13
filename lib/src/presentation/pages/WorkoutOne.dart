import 'package:comicsapp/src/domain/entities/WorkoutOne.dart';
import 'package:comicsapp/src/presentation/StyledText.dart';
import 'package:comicsapp/src/presentation/Widget/WidgetAppBar.dart';
import 'package:comicsapp/src/presentation/pages/ExerciseOne.dart';
import 'package:comicsapp/src/utils/globals/user.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../infrastructure/driver_adapter/services/WorkoutService.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class WorkoutOnePage extends StatefulWidget {
  const WorkoutOnePage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _WorkoutOne createState() => _WorkoutOne();
}

class _WorkoutOne extends State<WorkoutOnePage> {
  @override
  void initState() {
    super.initState();
    getWorkout();
  }

  List<WorkoutOne> listWorkout = [];
  void getWorkout() {
    var service = WorkoutService();

    var workouts = service.getWorkout(IdCoach);
    for (var item in workouts) {
      listWorkout.add(item);
    }
  }

  void goToExercisePage(String nameWorkout, int idWorkout) {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => ExerciseOneP(
                  nameWorkout: nameWorkout,
                  idWorkout: idWorkout,
                )));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const WidgetAppBar(
        title: 'Entrenamiento',
      ),
      body: ListView.builder(
          itemCount: listWorkout.length,
          itemBuilder: (context, index) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                      padding: const EdgeInsets.all(5.0),
                      height: 75.5,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          gradient: LinearGradient(colors: [
                            Colors.grey.shade300,
                            Colors.grey.shade200,
                            Colors.grey.shade100
                          ])),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: 60,
                                height: 50,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    gradient: LinearGradient(colors: [
                                      Colors.red.shade400,
                                      Colors.red.shade300,
                                      Colors.red.shade200
                                    ])),
                                child: const Center(
                                    child: IconButton(
                                        onPressed: null,
                                        icon: FaIcon(
                                          FontAwesomeIcons.trash,
                                          color: Colors.white,
                                        ))),
                              ),
                              StyledText(
                                  text: listWorkout[index].nameWorkout,
                                  style: const TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold)),
                              Container(
                                width: 50,
                                height: 50,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    gradient: LinearGradient(colors: [
                                      Colors.blue.shade400,
                                      Colors.blue.shade300,
                                      Colors.blue.shade200
                                    ])),
                                child: Center(
                                  child: IconButton(
                                      onPressed: () => {
                                            goToExercisePage(
                                                listWorkout[index].nameWorkout,
                                                listWorkout[index].idWorkout)
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
                      )),
                )
              ],
            );
          }),
    );
  }
}
