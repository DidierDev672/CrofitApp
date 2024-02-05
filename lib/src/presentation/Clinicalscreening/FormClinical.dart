import 'package:flutter/material.dart';
import '../PhysicalFitness/HeaderPhysicalFitness.dart';
import '../PhysicalFitness/Physicalresults.dart';
import '../StyledText.dart';
import '../PhysicalFitness/SubPhysical.dart';

class FormClinical extends StatefulWidget {
  const FormClinical({Key? key}) : super(key: key);
  @override
  _FormClinical createState() => _FormClinical();
}

class _FormClinical extends State<FormClinical> {
  String _KilogramsOne = '';
  String _KilogramsTwo = '';

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          const SizedBox(height: 5),
          const HeaderPhysicalFitness(),
          const SizedBox(height: 5),
          SubPhysical(title: 'fasting glucose'),
          const SizedBox(height: 5),
          const Physicalresult(),
          const SizedBox(height: 5),
          Flex(
            direction: Axis.horizontal,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 175,
                height: 40,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 240, 240, 240),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextFormField(
                  decoration: const InputDecoration(labelText: 'Weight (kg)'),
                  onChanged: (value) {
                    setState(() {
                      _KilogramsOne = value;
                    });
                  },
                ),
              ),
              const SizedBox(width: 5),
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 240, 240, 240),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Center(
                  child: StyledText(
                      text: 'mg/dl',
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w500)),
                ),
              ),
              const SizedBox(width: 5),
              Container(
                width: 170,
                height: 40,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 240, 240, 240),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextFormField(
                  decoration: const InputDecoration(labelText: 'Weight (kg)'),
                  onChanged: (value) {
                    setState(() {
                      _KilogramsOne = value;
                    });
                  },
                ),
              ),
            ],
          ),
          const SizedBox(height: 5),
          const HeaderPhysicalFitness(),
          const SizedBox(height: 5),
          SubPhysical(title: 'CPK'),
          const SizedBox(height: 5),
          const Physicalresult(),
          const SizedBox(height: 5),
          Flex(
            direction: Axis.horizontal,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 175,
                height: 40,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 240, 240, 240),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextFormField(
                  decoration: const InputDecoration(labelText: 'Weight (kg)'),
                  onChanged: (value) {
                    setState(() {
                      _KilogramsOne = value;
                    });
                  },
                ),
              ),
              const SizedBox(width: 5),
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 240, 240, 240),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Center(
                  child: StyledText(
                      text: 'U/L',
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w500)),
                ),
              ),
              const SizedBox(width: 5),
              Container(
                width: 170,
                height: 40,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 240, 240, 240),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextFormField(
                  decoration: const InputDecoration(labelText: 'Weight (kg)'),
                  onChanged: (value) {
                    setState(() {
                      _KilogramsOne = value;
                    });
                  },
                ),
              ),
            ],
          ),
          const SizedBox(height: 5),
          const HeaderPhysicalFitness(),
          const SizedBox(height: 5),
          SubPhysical(title: 'Cholestero'),
          const SizedBox(height: 5),
          const Physicalresult(),
          Flex(
            direction: Axis.horizontal,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 175,
                height: 40,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 240, 240, 240),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextFormField(
                  decoration: const InputDecoration(labelText: 'Weight (kg)'),
                  onChanged: (value) {
                    setState(() {
                      _KilogramsOne = value;
                    });
                  },
                ),
              ),
              const SizedBox(width: 5),
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 240, 240, 240),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Center(
                  child: StyledText(
                      text: 'mg/dL',
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w500)),
                ),
              ),
              const SizedBox(width: 5),
              Container(
                width: 170,
                height: 40,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 240, 240, 240),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextFormField(
                  decoration: const InputDecoration(labelText: 'Weight (kg)'),
                  onChanged: (value) {
                    setState(() {
                      _KilogramsOne = value;
                    });
                  },
                ),
              ),
            ],
          ),
          const SizedBox(height: 5),
          const HeaderPhysicalFitness(),
          const SizedBox(height: 5),
          SubPhysical(title: 'TSH'),
          const SizedBox(height: 5),
          const Physicalresult(),
          const SizedBox(height: 5),
          Flex(
            direction: Axis.horizontal,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 175,
                height: 40,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 240, 240, 240),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextFormField(
                  decoration: const InputDecoration(labelText: 'Weight (kg)'),
                  onChanged: (value) {
                    setState(() {
                      _KilogramsOne = value;
                    });
                  },
                ),
              ),
              const SizedBox(width: 5),
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 240, 240, 240),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Center(
                  child: StyledText(
                      text: 'mg/dL',
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w500)),
                ),
              ),
              const SizedBox(width: 5),
              Container(
                width: 170,
                height: 40,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 240, 240, 240),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextFormField(
                  decoration: const InputDecoration(labelText: 'Weight (kg)'),
                  onChanged: (value) {
                    setState(() {
                      _KilogramsOne = value;
                    });
                  },
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
