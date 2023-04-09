import 'package:clean/features/presentation/page/credential/sign_in_page.dart';
import 'package:clean/features/presentation/page/credential/sign_up_page.dart';
import 'package:clean/features/presentation/page/main_screen/main_screen.dart';
import 'package:clean/on_generate_route.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Instagram Clone',
      debugShowCheckedModeBanner: false,
      darkTheme: ThemeData.dark(),
      onGenerateRoute: OnGenerateRoute.route,
      initialRoute: "/",
      routes: {
        "/": (context) {
          return MainScreen();
        }
      },
    );
  }
}
