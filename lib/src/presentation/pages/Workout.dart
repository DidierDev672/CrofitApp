import 'package:comicsapp/src/infrastructure/database/Workout_data.dart';
import 'package:comicsapp/src/presentation/Widget/heat_map.dart';
import 'package:comicsapp/src/presentation/pages/Workout_Page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../StyledText.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class Workouts extends StatefulWidget {
  const Workouts({super.key});

  @override
  State<Workouts> createState() => _WorkoutsPageState();
}

class _WorkoutsPageState extends State<Workouts> {
  @override
  void initState() {
    super.initState();

    Provider.of<WorkoutData>(context, listen: false).initalizeWorkoutList();
  }

  //* Text controller.
  final newWorkoutNameController = TextEditingController();
  String nameWorkout = "";

  //Create a new workout.
  void createNewWorkout() {
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              title: const Text("Nuevo entrenamiento"),
              content: TextField(
                controller: newWorkoutNameController,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Nombre del entrenamiento'),
              ),
              actions: [
                //? Save button.
                MaterialButton(
                  onPressed: save,
                  child: const Text("Guardar"),
                ),

                //!Cancel button.
                MaterialButton(
                  onPressed: cancel,
                  child: const Text("Cancelar"),
                )
              ],
            ));
  }

  //* Go to workout page.
  void goToWorkoutPage(String workoutName) {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => WorkoutPage(workoutName: workoutName)));
  }

  //? Save workout.
  void save() {
    //* Get workout name form text controller.
    String newWorkoutName = newWorkoutNameController.text;
    //* Add workout to workout data list.
    if (newWorkoutName != '') {
      Provider.of<WorkoutData>(context, listen: false)
          .addWorkout(newWorkoutName);
      //* Pop dialog box.
      Navigator.pop(context);
      clear();
    }
  }

  //? Update workout
  void updateWorkout() {
    String updateWorkout = newWorkoutNameController.text;
    if (updateWorkout != '') {
      Provider.of<WorkoutData>(context, listen: false)
          .editWorkout(nameWorkout, updateWorkout);
      clear();
      Navigator.of(context).pop();
    }
  }

//* Delete workout
  void deleteWorkout() {
    Provider.of<WorkoutData>(context, listen: false).deleteWorkout(nameWorkout);
  }

  //! Cancel workout.
  void cancel() {
    Navigator.of(context).pop();
  }

  // * Clear controllers.
  void clear() {
    newWorkoutNameController.clear();
    clear();
  }

  //* Workouts settings
  void settingsWorkouts(String queryWorkout) {
    nameWorkout = queryWorkout;
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              title: StyledText(
                  text: 'Editar Entrenamiento',
                  style: TextStyle(
                      color: Colors.grey.shade800,
                      fontSize: 16.5,
                      fontWeight: FontWeight.w600,
                      fontStyle: FontStyle.italic)),
              content: TextField(
                controller: newWorkoutNameController,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Nombre del entrenamiento'),
              ),
              actions: [
                //? Save button.
                MaterialButton(
                  onPressed: updateWorkout,
                  child: const StyledText(text: "Editar", style: TextStyle()),
                ),

                //!Cancel button.
                MaterialButton(
                  onPressed: cancel,
                  child: const StyledText(text: "Cancelar", style: TextStyle()),
                )
              ],
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<WorkoutData>(
      builder: (context, value, child) => Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue.shade500,
          foregroundColor: Colors.white,
          elevation: 5.0,
          centerTitle: true,
          title: const StyledText(
              text: 'CORPCFIT',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30))),
          actions: const [
            CircleAvatar(
                radius: 60.5,
                backgroundImage: NetworkImage(
                    'https://mixkit.imgix.net/art/preview/mixkit-weeping-man-on-his-own-125-original-large.png?q=80&auto=format%2Ccompress'))
          ],
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.blue.shade500,
          foregroundColor: Colors.white,
          onPressed: createNewWorkout,
          child: const FaIcon(FontAwesomeIcons.plus),
        ),
        body: ListView(
          children: [
            // Heat Map
            MyHeatMap(
                datasets: value.heatMapDataSet,
                startDateYYYYMMDD: value.getStartDate()),
            // Workout List
            ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: value.getWorkoutList().length,
                itemBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.all(8.5),
                    child: Slidable(
                        endActionPane: ActionPane(
                            motion: const StretchMotion(),
                            children: [
                              // Settings option.
                              SlidableAction(
                                onPressed: (context) => {
                                  settingsWorkouts(
                                      value.getWorkoutList()[index].name)
                                },
                                backgroundColor: Colors.grey.shade800,
                                icon: Icons.settings,
                                borderRadius: BorderRadius.circular(12),
                              ),
                              // Delete options.
                              SlidableAction(
                                onPressed: (context) {
                                  deleteWorkout();
                                },
                                backgroundColor: Colors.red.shade400,
                                icon: Icons.delete,
                                borderRadius: BorderRadius.circular(12),
                              )
                            ]),
                        child: Container(
                          padding: const EdgeInsets.all(10.5),
                          decoration: BoxDecoration(
                              gradient: LinearGradient(colors: [
                                Colors.grey.shade300,
                                Colors.grey.shade200,
                                Colors.grey.shade100
                              ]),
                              borderRadius: BorderRadius.circular(20)),
                          child: ListTile(
                            leading: Container(
                              width: 40,
                              height: 40,
                              padding: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  color: Colors.blue.shade100,
                                  borderRadius: BorderRadius.circular(100)),
                              child: Center(
                                  child: FaIcon(
                                FontAwesomeIcons.dumbbell,
                                color: Colors.blue.shade600,
                                size: 17.5,
                              )),
                            ),
                            title: StyledText(
                              text: value.getWorkoutList()[index].name,
                              style: const TextStyle(
                                  fontSize: 13.5,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.black),
                            ),
                            trailing: IconButton(
                              icon: FaIcon(
                                FontAwesomeIcons.arrowRight,
                                color: Colors.grey[700],
                                size: 20,
                              ),
                              onPressed: () => goToWorkoutPage(
                                  value.getWorkoutList()[index].name),
                            ),
                          ),
                        ))))
          ],
        ),
      ),
    );
  }
}
