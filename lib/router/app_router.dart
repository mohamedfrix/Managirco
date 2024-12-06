import "package:flutter_bloc/flutter_bloc.dart";
import "package:go_router/go_router.dart";
import "package:mobile_project/features/login/bloc/login_bloc.dart";
import "package:mobile_project/features/login/ui/login_screen.dart";
import "package:mobile_project/features/splash/ui/splash_screen.dart";
import "package:mobile_project/features/welcome/bloc/welcome_bloc.dart";
import "package:mobile_project/features/welcome/ui/welcome_root_screen.dart";

class AppRouter {
  AppRouter._();

  static GoRouter router = GoRouter(
      initialLocation: '/welcome',
      routes: [
        GoRoute(
          path: '/splash',
          builder: (context, state) => const SplashScreen(),
        ),
        GoRoute(
          path: '/welcome',
          builder: (context, state) {
            return BlocProvider(
              create: (context) => WelcomeBloc(),
              child: const WelcomeRootScreen(),
            );
          }
        ),

        GoRoute(
            path: '/login',
            builder: (context, state) {
              return BlocProvider(
                create: (context) => LoginBloc(),
                child: const LoginScreen(),
              );
            }
        ),

      ]
  );
}