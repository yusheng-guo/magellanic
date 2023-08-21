import 'package:flutter/material.dart';
import 'package:magellanic/blocs/bottom_navigation/bottom_navigation_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:magellanic/views/ui/main_screen.dart';

class RouteGenerator {
  final BottomNavigationBloc bottomNavBloc = BottomNavigationBloc();

  Route<dynamic> generateRoute(RouteSettings settings) {
    // final args = settings.arguments;
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
          builder: (_) => BlocProvider<BottomNavigationBloc>.value(
            value: bottomNavBloc,
            // child: const MainScreen(),
            child: const MainPage(),
          ),
        );
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(
      builder: (_) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('Error'),
          ),
          body: const Center(
            child: Text('ERROR'),
          ),
        );
      },
    );
  }
}
