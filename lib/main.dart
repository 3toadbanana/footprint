import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:footprint/data/notifiers.dart';
import 'package:footprint/views/widget_tree.dart';

void main() {
  runApp(const MyApp());
}

//Material App (Stateful)
//Scaffold
//App Bar (title)
//Bottom Nav

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: isDarkModeNotifier,
      builder: (context, isDarkMode, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            colorScheme: ColorScheme(
              brightness: isDarkMode ? Brightness.dark : Brightness.light,
              primary: Colors.white,
              onPrimary: Colors.lightGreen,
              secondary: Colors.blue,
              onSecondary: Colors.blueAccent,
              error: Colors.red,
              onError: Colors.redAccent,
              surface: Color(0xFF243238),
              onSurface: Colors.white,
            ),
          ),
          home: WidgetTree(),
        );
      },
    );
  }
}

Route fadeRoute(Widget child) {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => child,
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      final controller = AnimationController(
        vsync: this,
        duration: Duration(seconds: 1),
      );
      final animation = Tween(begin: 0.0, end: 1.0).animate(controller);
      controller.forward();
      return FadeTransition(opacity: animation);
    },
  );
}
