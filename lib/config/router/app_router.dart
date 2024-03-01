import 'package:comicsapp/config/router/app_router_notifier.dart';
import 'package:comicsapp/features/auth/auth.dart';
import 'package:comicsapp/features/auth/presention/providers/auth_provider.dart';
import 'package:comicsapp/features/products/presentation/product_screens.dart';
import 'package:comicsapp/features/products/presentation/screens/products_screens.dart';
// import 'package:comicsapp/features/workout/presention/screens/workout_screen.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

final goRouterProvider = Provider((ref) {
  final goRouterNotifier = ref.read(goRouterNotifierProvider);
  return GoRouter(
      initialLocation: '/splash',
      refreshListenable: goRouterNotifier,
      routes: [
        //* La Primera Pantalla.
        GoRoute(
            path: '/splash',
            builder: (context, state) => const CheckAuthStatusScreen()),
        GoRoute(
            path: '/login', builder: (context, state) => const LoginScreen()),

        GoRoute(
            path: '/', builder: ((context, state) => const ProductScreen())),
        GoRoute(
            path: '/product/:id',
            builder: (context, state) => ProductsScreen(
                  productId: state.pathParameters['id'] ?? 'no-id',
                ))
      ],
      redirect: (context, state) {
        final isGoingTo = state.matchedLocation;
        final authStatus = goRouterNotifier.authStatus;

        print('GoRouter authStatus: $authStatus, isGoingTo: $isGoingTo');

        if (isGoingTo == '/splash' && authStatus == AuthStatus.checking) {
          return null;
        }

        if (authStatus == AuthStatus.notAuthenticated) {
          if (isGoingTo == '/login') return null;
          return '/login';
        }

        if (authStatus == AuthStatus.authenticated) {
          if (isGoingTo == '/login' || isGoingTo == '/splash') {
            return '/';
          }
        }
        return null;
      });
});
