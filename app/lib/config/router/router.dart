import 'package:app/app.dart';
import 'package:app/config/router/route_name.dart';
import 'package:app/presentation/bloc/auth/auth_bloc.dart';
import 'package:app/presentation/pages/auth/auth_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

GlobalKey<NavigatorState> rootNavigatorKey = GlobalKey();

sealed class AppRouter {
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.auth:
        return MaterialPageRoute(
          builder: (context) => BlocProvider(
            create: (context) => sl<AuthBloc>(),
            child: AuthPage(),
          ),
        );
      default:
        return MaterialPageRoute(builder: (context) => const Scaffold());
    }
  }
}
