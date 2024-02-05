import 'package:comicsapp/src/presentation/StyledText.dart';
import 'package:flutter/material.dart';

class FormProfile extends StatelessWidget {
  const FormProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
        autovalidateMode: AutovalidateMode.always,
        child: Column(
          children: [
            TextFormField(
              keyboardType: TextInputType.name,
              decoration: InputDecoration(
                  labelText: 'Nombre completo',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0))),
              validator: (value) {
                if (value?.isEmpty ?? false) {
                  return "Ingrese su nombre completo";
                }
                return null;
              },
            ),
            const SizedBox(height: 24),
            TextFormField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  labelText: 'Numero de identificación',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0))),
              validator: (value) {
                if (value?.isEmpty ?? false) {
                  return "Ingrese su numero de identificación";
                } else if (!RegExp(r'^[0-9]+$').hasMatch(value.toString())) {
                  return 'El valor debe ser un numero';
                }
                return null;
              },
            ),
            const SizedBox(height: 24),
            TextFormField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  labelText: 'Edad',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0))),
              validator: (value) {
                if (value?.isEmpty ?? false) {
                  return "Ingrese su edad";
                } else if (!RegExp(r'^[0-9]+$').hasMatch(value.toString())) {
                  return 'El valor debe ser un numero';
                }
                return null;
              },
            ),
            const SizedBox(height: 24),
            TextFormField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  labelText: 'Teléfono',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0))),
              validator: (value) {
                if (value?.isEmpty ?? false) {
                  return "Ingrese su numero de teléfono";
                } else if (!RegExp(r'^[0-9]+$').hasMatch(value.toString())) {
                  return 'El valor debe ser un numero';
                }
                return null;
              },
            ),
            const SizedBox(height: 24),
            TextFormField(
              decoration: InputDecoration(
                  labelText: 'Dirección',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0))),
              validator: (value) {
                if (value?.isEmpty ?? false) {
                  return "Ingrese su dirección o municipio o ciudad";
                }
                return null;
              },
            ),
            const SizedBox(height: 24),
            TextFormField(
              decoration: InputDecoration(
                  labelText: 'Correo electrónico',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0))),
              validator: (value) {
                if (value?.isEmpty ?? false) {
                  return "Ingrese su dirección o municipio o ciudad";
                }
                if (!RegExp(r'^.+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,6}$')
                    .hasMatch(value.toString())) {
                  return "Correo electrónico no válido";
                }
                return null;
              },
            ),
            const SizedBox(height: 24),
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                  labelText: 'Contraseña',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0))),
              validator: (value) {
                if (value?.isEmpty ?? false) {
                  return "La contraseña es requerida";
                }

                return null;
              },
            ),
            const SizedBox(height: 36),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue.shade500,
                  foregroundColor: Colors.white),
              child: const StyledText(
                  text: 'Actualizar',
                  style:
                      TextStyle(fontSize: 15.5, fontWeight: FontWeight.bold)),
            ),
          ],
        ));
  }
}
