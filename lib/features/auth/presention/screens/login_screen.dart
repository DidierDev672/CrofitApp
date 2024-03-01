import 'package:comicsapp/features/auth/presention/providers/auth_provider.dart';
import 'package:comicsapp/features/auth/presention/providers/login_form_provider.dart';
import 'package:comicsapp/features/shared/widgets/widgets/geometrical_background.dart';
import 'package:comicsapp/src/utils/globals/user.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../../../src/presentation/StyledText.dart';
import '../../../../src/presentation/Widget/StyledField.dart';
import '../../../../src/presentation/Widget/ButtonLogin.dart';

// Services -> 'Coaches'.
import '../../../../src/infrastructure/driver_adapter/services/CoachService.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(Object context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        body: GeometricalBackground(
          child: ListView(
            physics: const ClampingScrollPhysics(),
            children: [_LoginPageState()],
          ),
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class _LoginPageState extends ConsumerWidget {
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
        //GoRouter.of(context).go('/home');
      }
    }
  }

  void showSnackbar(BuildContext context, String message) {
    ScaffoldMessenger.of(context).hideCurrentSnackBar();
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(message),
    ));
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final loginForm = ref.watch(LoginFormProvider);

    ref.listen(authProvider, (provider, next) {
      if (next.errorMessage.isEmpty) return;
      showSnackbar(context, next.errorMessage);
    });
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const SizedBox(height: 50),
        FaIcon(
          FontAwesomeIcons.personSkating,
          size: 120,
          color: Colors.grey.shade200,
        ),
        const SizedBox(height: 50),
        const StyledText(
            text: 'Bienvenido de nuevo se te ha echado de menos',
            style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.w500,
                fontStyle: FontStyle.italic)),
        const SizedBox(height: 25),
        StyledField(
          controller: usernameController,
          hintText: 'Usuario',
          obscureText: false,
          keyboardType: TextInputType.emailAddress,
          onChanged: ref.read(LoginFormProvider.notifier).onEmailChange,
          errorMessage:
              loginForm.isFormPosted ? loginForm.email.errorMessage : null,
        ),
        const SizedBox(height: 25),
        StyledField(
          controller: passwordController,
          hintText: 'Contraseña',
          obscureText: true,
          onFieldSubmitted: (_) =>
              ref.read(LoginFormProvider.notifier).onFormSubmit(),
          onChanged: ref.read(LoginFormProvider.notifier).onPasswordChanged,
          errorMessage:
              loginForm.isFormPosted ? loginForm.password.errorMessage : null,
        ),
        const SizedBox(height: 26),
        SizedBox(
          width: double.infinity,
          height: 60,
          child: ButtonLogin(
            text: 'Ingresar',
            buttonColor: Colors.white,
            onPressed: loginForm.isPosting
                ? null
                : ref.read(LoginFormProvider.notifier).onFormSubmit,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Row(
            children: [
              Expanded(child: Divider(thickness: 0.5, color: Colors.grey[400])),
              const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.0),
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
            FaIcon(
              FontAwesomeIcons.facebook,
              color: Colors.white,
              size: 40,
            ),
            SizedBox(width: 10),
            FaIcon(
              FontAwesomeIcons.twitter,
              color: Colors.white,
              size: 40,
            ),
            SizedBox(width: 10),
            FaIcon(
              FontAwesomeIcons.googlePlus,
              color: Colors.white,
              size: 40,
            ),
          ],
        ),
        const SizedBox(height: 70),
        const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            StyledText(
                text: '"La vida es mejor',
                style: TextStyle(fontSize: 18, color: Colors.white70)),
            SizedBox(width: 4),
            StyledText(
                text: 'cuando te mueves"',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white))
          ],
        )
      ],
    );
  }
}
