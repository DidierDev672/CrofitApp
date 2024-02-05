import 'package:flutter/material.dart';
import '../PhysicalFitness/HeaderPhysicalFitness.dart';
import '../PhysicalFitness/Physicalresults.dart';
import '../StyledText.dart';
import '../PhysicalFitness/SubPhysical.dart';

class AnthropometryForm extends StatefulWidget {
  const AnthropometryForm({Key? key}) : super(key: key);
  @override
  _AnthropometryForm createState() => _AnthropometryForm();
}

class _AnthropometryForm extends State<AnthropometryForm> {
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
          SubPhysical(title: 'Lean mass'),
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
                      text: 'KG',
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
          SubPhysical(title: '% of fat'),
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
                      text: '%',
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
          SubPhysical(title: 'Body water'),
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
                      text: 'L',
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
          SubPhysical(title: 'Bone density'),
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
                      text: 'KG',
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
