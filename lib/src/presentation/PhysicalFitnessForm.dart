import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import './StyledText.dart';
import './PhysicalFitness/HeaderPhysicalFitness.dart';
import './PhysicalFitness/Physicalresults.dart';

class PhysicalFitnessForm extends StatelessWidget {
  const PhysicalFitnessForm({super.key});
  @override
  Widget build(BuildContext context) {
    return Center(
        child: SafeArea(
      child: ListView(padding: const EdgeInsets.all(1.0), children: [
        const HeaderPhysicalFitness(),
        const SizedBox(height: 5),
        Container(
          height: 35,
          width: 350,
          decoration: BoxDecoration(
              color: const Color.fromARGB(255, 240, 240, 240),
              borderRadius: BorderRadius.circular(10)),
          child: const Center(
            child: StyledText(
                text: 'RM on flat bench',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.normal)),
          ),
        ),
        const SizedBox(height: 5),
        const Physicalresult(),
        const SizedBox(height: 5),
        Flex(
          direction: Axis.horizontal,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 170,
              height: 40,
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 240, 240, 240),
                  borderRadius: BorderRadius.circular(10)),
              child: TextFormField(
                decoration: const InputDecoration(labelText: '0'),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter her kg';
                  }

                  return null;
                },
              ),
            ),
            const SizedBox(
              width: 80,
              height: 40,
              child: StyledText(
                text: 'KG',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              ),
            ),
            Container(
              width: 170,
              height: 40,
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 240, 240, 240),
                  borderRadius: BorderRadius.circular(10)),
              child: TextFormField(
                decoration: const InputDecoration(labelText: '0'),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter her kg';
                  }

                  return null;
                },
              ),
            ),
          ],
        ),
        const SizedBox(height: 5),
        const HeaderPhysicalFitness(),
        const SizedBox(height: 5),
        Container(
          width: 350,
          height: 40,
          decoration: BoxDecoration(
              color: const Color.fromARGB(255, 240, 240, 240),
              borderRadius: BorderRadius.circular(10)),
          child: const Center(
              child: StyledText(
                  text: 'Course Navette',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500))),
        ),
        const SizedBox(height: 5),
        const Physicalresult(),
        const SizedBox(height: 5),
        Flex(
          direction: Axis.horizontal,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 170,
              height: 40,
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 240, 240, 240),
                  borderRadius: BorderRadius.circular(10)),
              child: TextFormField(
                decoration: const InputDecoration(labelText: '0'),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter her kg';
                  }

                  return null;
                },
              ),
            ),
            const SizedBox(
              width: 80,
              height: 40,
              child: StyledText(
                text: 'Past',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              ),
            ),
            Container(
              width: 170,
              height: 40,
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 240, 240, 240),
                  borderRadius: BorderRadius.circular(10)),
              child: TextFormField(
                decoration: const InputDecoration(labelText: '0'),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter her kg';
                  }

                  return null;
                },
              ),
            ),
          ],
        ),
        const SizedBox(height: 5),
        const HeaderPhysicalFitness(),
        const SizedBox(height: 5),
        Container(
          width: 350,
          height: 40,
          decoration: BoxDecoration(
              color: const Color.fromARGB(255, 240, 240, 240),
              borderRadius: BorderRadius.circular(10)),
          child: const Center(
              child: StyledText(
                  text: 'Mill test',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500))),
        ),
        const SizedBox(height: 5),
        const Physicalresult(),
        const SizedBox(height: 5),
        Flex(
          direction: Axis.horizontal,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 170,
              height: 40,
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 240, 240, 240),
                  borderRadius: BorderRadius.circular(10)),
              child: TextFormField(
                decoration: const InputDecoration(labelText: '0'),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter her kg';
                  }

                  return null;
                },
              ),
            ),
            const SizedBox(
              width: 80,
              height: 40,
              child: StyledText(
                text: 'Vo2 max',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              ),
            ),
            Container(
              width: 170,
              height: 40,
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 240, 240, 240),
                  borderRadius: BorderRadius.circular(10)),
              child: TextFormField(
                decoration: const InputDecoration(labelText: '0'),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter her kg';
                  }

                  return null;
                },
              ),
            ),
          ],
        ),
        const SizedBox(height: 5),
        const HeaderPhysicalFitness(),
        const SizedBox(height: 5),
        const Physicalresult(),
        const SizedBox(height: 5),
        Container(
          width: 350,
          height: 40,
          decoration: BoxDecoration(
              color: const Color.fromARGB(255, 240, 240, 240),
              borderRadius: BorderRadius.circular(10)),
          child: const Center(
              child: StyledText(
                  text: 'Wall Test',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500))),
        ),
        const SizedBox(height: 5),
        Flex(
          direction: Axis.horizontal,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 170,
              height: 40,
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 240, 240, 240),
                  borderRadius: BorderRadius.circular(10)),
              child: TextFormField(
                decoration: const InputDecoration(labelText: '0'),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter her kg';
                  }

                  return null;
                },
              ),
            ),
            const SizedBox(
              width: 80,
              height: 40,
              child: StyledText(
                text: 'Cm',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              ),
            ),
            Container(
              width: 170,
              height: 40,
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 240, 240, 240),
                  borderRadius: BorderRadius.circular(10)),
              child: TextFormField(
                decoration: const InputDecoration(labelText: '0'),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter her kg';
                  }

                  return null;
                },
              ),
            ),
          ],
        ),
      ]),
    ));
  }
}
