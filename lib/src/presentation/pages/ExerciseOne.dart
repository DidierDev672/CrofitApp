import 'dart:math';

import 'package:comicsapp/src/domain/entities/ExerciseOne.dart';
import 'package:comicsapp/src/infrastructure/driver_adapter/services/ExerciseService.dart';
import 'package:comicsapp/src/presentation/StyledText.dart';
import 'package:comicsapp/src/presentation/Widget/WidgetAppBar.dart';
import 'package:comicsapp/src/utils/globals/user.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ExerciseOneP extends StatefulWidget {
  // ignore: prefer_typing_uninitialized_variables
  final nameWorkout;
  final idWorkout;
  const ExerciseOneP(
      {super.key, required this.nameWorkout, required this.idWorkout});

  @override
  // ignore: library_private_types_in_public_api
  _ExerciseOneP createState() => _ExerciseOneP();
}

class _ExerciseOneP extends State<ExerciseOneP> {
  @override
  void initState() {
    super.initState();
    getExercise();
  }

  final nameExercise = TextEditingController();
  final weight = TextEditingController();
  final repetition = TextEditingController();
  final sections = TextEditingController();
  List<ExerciseOne> listExercise = [];
  void createNewExercise() {
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              title: const StyledText(
                  text: 'Crea ejercicios nuevos',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              content: SingleChildScrollView(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      TextField(
                        controller: nameExercise,
                        decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Nombre del ejercicio'),
                        style: const TextStyle(fontSize: 16.0),
                        cursorColor: Colors.blue,
                        cursorWidth: 2.0,
                        textAlign: TextAlign.center,
                        maxLength: 100,
                        enabled: true,
                      ),
                      const SizedBox(height: 10),
                      TextField(
                        controller: weight,
                        decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Asignar peso'),
                        style: const TextStyle(fontSize: 16.0),
                        cursorColor: Colors.blue,
                        cursorWidth: 2.0,
                        textAlign: TextAlign.center,
                        maxLength: 100,
                        enabled: true,
                      ),
                      const SizedBox(height: 10),
                      TextField(
                        controller: repetition,
                        decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Asignar repeticiones'),
                        style: const TextStyle(fontSize: 16.0),
                        cursorWidth: 2.0,
                        textAlign: TextAlign.center,
                        maxLength: 100,
                        enabled: true,
                      ),
                      const SizedBox(height: 10),
                      TextField(
                          controller: sections,
                          decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Asignar secciones'),
                          style: const TextStyle(fontSize: 16.0),
                          cursorWidth: 2.0,
                          textAlign: TextAlign.center,
                          maxLength: 100,
                          enabled: true),
                    ]),
              ),
              actions: [
                // Save button.
                MaterialButton(
                    onPressed: createExercise,
                    child: const StyledText(
                        text: 'Aceptar', style: TextStyle(fontSize: 16.0))),
                // Cancel button.
                MaterialButton(
                  onPressed: cancel,
                  child: const StyledText(
                      text: 'Cancelar', style: TextStyle(fontSize: 16.0)),
                )
              ],
            ));
  }

  void getExercise() {
    var service = ExerciseService();
    var exercise = service.getExercise(IdCoach);
    for (var item in exercise) {
      listExercise.add(item);
    }
  }

  void createExercise() {
    String nExercise = nameExercise.text;
    String exWeight = weight.text;
    String reps = repetition.text;
    String sets = sections.text;
    var service = ExerciseService();
    final random = Random();
    if (nExercise != '' && exWeight != '' && reps != '' && sets != '') {
      ExerciseOne newExercise = ExerciseOne(
          idWorkout: widget.idWorkout,
          idExercise: random.nextInt(1),
          idCoach: IdCoach,
          idStudent: IdUser,
          nameExercise: nExercise,
          weight: exWeight,
          repetitions: reps,
          sections: sets);

      listExercise.add(newExercise);

      service.createNewExercise(newExercise);
      clear();
      Navigator.pop(context);
    }
  }

  void cancel() {
    clear();
    Navigator.pop(context);
  }

  void clear() {
    nameExercise.clear();
    weight.clear();
    repetition.clear();
    sections.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: WidgetAppBar(title: widget.nameWorkout),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue.shade500,
        onPressed: createNewExercise,
        child: const FaIcon(
          FontAwesomeIcons.plus,
          color: Colors.white,
        ),
      ),
      body: ListView.builder(
          itemCount: listExercise.length,
          itemBuilder: (context, index) {
            return Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  gradient: LinearGradient(colors: [
                    Colors.grey.shade300,
                    Colors.grey.shade200,
                    Colors.grey.shade100
                  ])),
              child: Column(
                children: [
                  StyledText(
                      text: listExercise[index].nameExercise,
                      style: const TextStyle(
                          fontSize: 16.0, fontWeight: FontWeight.bold)),
                ],
              ),
            );
          }),
    );
  }
}
