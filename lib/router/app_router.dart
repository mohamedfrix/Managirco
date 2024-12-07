import "package:flutter_bloc/flutter_bloc.dart";
import "package:go_router/go_router.dart";
import "package:mobile_project/features/collaboration/bloc/collaboration_pages_bloc/collaboration_pages_bloc.dart";
import "package:mobile_project/features/collaboration/ui/a_collaboration_part_screen.dart";
import "package:mobile_project/features/collaboration/ui/add_collaboration_screen.dart";
import "package:mobile_project/features/collaboration/ui/create_task_screen.dart";
import "package:mobile_project/features/event/bloc/events_bloc.dart";
import "package:mobile_project/features/event/ui/add_event_screen.dart";
import "package:mobile_project/features/collaboration/ui/collaborations_screen.dart";
import "package:mobile_project/features/event/ui/events_screen.dart";
import "package:mobile_project/features/home/bloc/home_bloc.dart";
import "package:mobile_project/features/home/ui/home_screen.dart";
import "package:mobile_project/features/login/bloc/login_bloc.dart";
import "package:mobile_project/features/login/ui/login_screen.dart";
import "package:mobile_project/features/signup/bloc/signup_bloc.dart";
import "package:mobile_project/features/signup/ui/signup_screen.dart";
import "package:mobile_project/features/splash/bloc/splash_bloc.dart";
import "package:mobile_project/features/splash/ui/splash_screen.dart";
import "package:mobile_project/features/welcome/bloc/welcome_bloc.dart";
import "package:mobile_project/features/welcome/ui/welcome_root_screen.dart";

import "../features/collaboration/ui/a_collaboration_screen.dart";
import "../features/event/ui/an_event_screen.dart";

class AppRouter {
  AppRouter._();

  static GoRouter router = GoRouter(
      initialLocation: '/splash',
      routes: [

        GoRoute(
            path: '/splash',
            builder: (context, state) {
              return BlocProvider(
                create: (context) => SplashBloc()..add(SplashStarted()),
                child: const SplashScreen(),
              );
            }
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
                child: LoginScreen(),
              );
            }
        ),

        GoRoute(
            path: '/signup',
            builder: (context, state) {
              return BlocProvider(
                create: (context) => SignupBloc(),
                child: SignupScreen(),
              );
            }
        ),

        GoRoute(
            path: '/home',
            builder: (context, state) {
              return BlocProvider(
                create: (context) => HomeBloc(),
                child: HomeScreen(),
              );
            }
        ),

        GoRoute(
            path: '/events',
            builder: (context, state) {
              return BlocProvider(
                create: (context) => EventsBloc(),
                child: EventsScreen(),
              );
            }
        ),

        GoRoute(
            path: '/event/:name',
            builder: (context, state) {
              final name = state.pathParameters['name']!;
              return AnEventScreen(eventName: name,);
            }
        ),

        GoRoute(
            path: '/events/create',
            builder: (context, state) {
              return AddEventScreen();
            }
        ),

        GoRoute(
            path: '/collaborations',
            builder: (context, state) {
              return CollaborationsScreen();
            }
        ),
        GoRoute(
            path: '/collaborations/create',
            builder: (context, state) {
              return AddCollaborationScreen();
            }
        ),
        GoRoute(
            path: '/collaboration/info/:name',
            builder: (context, state) {
              final name = state.pathParameters['name']!;
              return ACollaborationScreen(collaborationName: name,);
            }
        ),

        GoRoute(
            path: '/collaboration/:name',
            builder: (context, state) {
              final name = state.pathParameters['name']!;
              return BlocProvider(
                create: (context) => CollaborationPagesBloc(),
                child: ACollaborationPartScreen(collaborationName: name,),
              );
            }
        ),

        GoRoute(
            path: '/tasks/create',
            builder: (context, state) {
              return CreateTaskScreen();
            }
        ),

      ]
  );
}