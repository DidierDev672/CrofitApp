// ignore: file_names
import 'package:comicsapp/src/domain/entities/Coach.dart';
import 'package:comicsapp/src/presentation/StyledText.dart';
import 'package:comicsapp/src/presentation/Widget/StyledAvatar.dart';
import 'package:comicsapp/src/utils/globals/user.dart';
import 'package:flutter/material.dart';
import '../../infrastructure/driver_adapter/services/CoachService.dart';

class DetailsCoach extends StatefulWidget {
  const DetailsCoach({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _DetailsCoachPage createState() => _DetailsCoachPage();
}

class _DetailsCoachPage extends State<DetailsCoach> {
  String name = "";
  String lastName = "";
  String photoProfile = "";
  List<Coach> detailsCoach() {
    var service = CoachService();

    var detail = service.detailCoach(IdCoach);
    for (var element in detail) {
      name = element.name;
      lastName = element.lastName;
      photoProfile = element.photoProfile;
    }
    return detail;
  }

  @override
  void initState() {
    super.initState();
    detailsCoach();
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.grey.shade200,
      shadowColor: Colors.grey.shade200,
      child: Column(
        children: [
          StyledAvatar(imageUrl: photoProfile, radius: 50),
          const SizedBox(height: 5),
          StyledText(
              text: name,
              style:
                  const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
          const SizedBox(height: 10),
          StyledText(
              text: lastName,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold))
        ],
      ),
    );
  }
}
