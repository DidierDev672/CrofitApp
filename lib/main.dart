import 'package:comicsapp/src/infrastructure/database/Workout_data.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:provider/provider.dart';
//import './src/presentation/Index.dart';
import './src/presentation/pages/PhysicalFitness.dart';
import './src/presentation/pages/Implements.dart';
import './src/presentation/pages/Login.dart';
import './src/presentation/pages/TeamPage.dart';
import './src/presentation/pages/Profile.dart';
import './src/presentation/pages/Home.dart';

void main() async {
  //* Initialize hive
  await Hive.initFlutter();

  // Open a hive box
  await Hive.openBox("workout_database1");
  runApp(const MyApp());
}

final GoRouter _router = GoRouter(routes: <RouteBase>[
  GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const Login();
      },
      routes: <RouteBase>[
        GoRoute(
          path: 'physical',
          builder: (BuildContext context, GoRouterState state) {
            return const PhysicalFitness();
          },
        ),
        GoRoute(
            path: 'implements',
            builder: (BuildContext context, GoRouterState state) {
              return const Implements();
            }),
        GoRoute(
            path: 'home',
            builder: (BuildContext context, GoRouterState state) {
              return const Home();
            }),
        GoRoute(
            path: 'teams',
            builder: (BuildContext context, GoRouterState state) {
              return const TeamPage();
            }),
        GoRoute(
            path: 'profile',
            builder: (BuildContext context, GoRouterState state) {
              return const Profile();
            })
      ]),

  //** */ Task creation of path 'Home'
]);

/*class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
        debugShowCheckedModeBanner: false, routerConfig: _router);
  }
}*/

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => WorkoutData(),
      child: MaterialApp.router(
          debugShowCheckedModeBanner: false, routerConfig: _router),
    );
  }
}