import 'package:comicsapp/src/utils/globals/user.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import '../StyledText.dart';
import '../Widget/StyledField.dart';
import '../Widget/ButtonLogin.dart';

// Services -> 'Coaches'.
import '../../infrastructure/driver_adapter/services/CoachService.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<Login> {
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  var service = CoachService();

  void startLogin() {
    if (usernameController.text != '' && passwordController.text != '') {
      var start = service.startSession(
          usernameController.text, passwordController.text);
      for (var element in start) {
        IdCoach = element.id;
      }
      if (IdCoach > 0) {
        GoRouter.of(context).go('/home');
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue.shade800,
        body: ListView(
          children: [
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(height: 50),
                  const Icon(
                    Icons.people,
                    size: 100,
                    color: Colors.white70,
                  ),
                  const SizedBox(height: 50),
                  const StyledText(
                      text: 'Bienvenido de nuevo se te ha echado de menos',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w500)),
                  const SizedBox(height: 25),
                  StyledField(
                    controller: usernameController,
                    hintText: 'Usuario',
                    obscureText: false,
                  ),
                  const SizedBox(height: 25),
                  StyledField(
                    controller: passwordController,
                    hintText: 'Contraseña',
                    obscureText: true,
                  ),
                  const SizedBox(height: 26),
                  ButtonLogin(onTap: startLogin),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: Row(
                      children: [
                        Expanded(
                            child: Divider(
                                thickness: 0.5, color: Colors.grey[400])),
                        const Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 10.0),
                            child: StyledText(
                                text: 'Ingresar con',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18))),
                        Expanded(
                            child: Divider(
                          thickness: 0.5,
                          color: Colors.grey[400],
                        ))
                      ],
                    ),
                  ),
                  const SizedBox(height: 50),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      FaIcon(FontAwesomeIcons.facebook, color: Colors.white),
                      SizedBox(width: 10),
                      FaIcon(FontAwesomeIcons.twitter, color: Colors.white),
                      SizedBox(width: 10),
                      FaIcon(FontAwesomeIcons.googlePlus, color: Colors.white),
                    ],
                  ),
                  const SizedBox(height: 50),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      StyledText(
                          text: '"La vida es mejor',
                          style:
                              TextStyle(fontSize: 20, color: Colors.white70)),
                      SizedBox(width: 4),
                      StyledText(
                          text: 'cuando te mueves"',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white))
                    ],
                  )
                ],
              ),
            )
          ],
        ));
  }
}
