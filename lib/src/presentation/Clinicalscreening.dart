import 'package:flutter/material.dart';
import './Clinicalscreening/FormClinical.dart';

class Clinicalscreening extends StatelessWidget {
  const Clinicalscreening({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(8),
      children: const [FormClinical()],
    );
  }
}
