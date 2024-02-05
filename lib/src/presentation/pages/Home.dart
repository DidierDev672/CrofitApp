import 'package:comicsapp/src/infrastructure/database/Workout_data.dart';
import 'package:comicsapp/src/presentation/Widget/heat_map.dart';
import 'package:comicsapp/src/presentation/pages/Workout_Page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../StyledText.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomePageState();
}

class _HomePageState extends State<Home> {
  @override
  void initState() {
    super.initState();

    Provider.of<WorkoutData>(context, listen: false).initalizeWorkoutList();
  }

  //* Text controller.
  final newWorkoutNameController = TextEditingController();
  //Create a new workout.
  void createNewWorkout() {
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              title: const Text("Create new workout"),
              content: TextField(controller: newWorkoutNameController),
              actions: [
                //? Save button.
                MaterialButton(
                  onPressed: save,
                  child: const Text("Save"),
                ),

                //!Cancel button.
                MaterialButton(
                  onPressed: cancel,
                  child: const Text("Cancel"),
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
    Provider.of<WorkoutData>(context, listen: false).addWorkout(newWorkoutName);
    //* Pop dialog box.
    Navigator.pop(context);
    clear();
  }

  //! Cancel workout.
  void cancel() {}

  // * Clear controllers.
  void clear() {
    newWorkoutNameController.clear();
    clear();
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
                itemBuilder: (context, index) => ListTile(
                      leading: FaIcon(
                        FontAwesomeIcons.dumbbell,
                        color: Colors.blue.shade400,
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
                        onPressed: () =>
                            goToWorkoutPage(value.getWorkoutList()[index].name),
                      ),
                    ))
          ],
        ),
      ),
    );
  }
}
