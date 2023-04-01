import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:lasithnew/Screens/Home.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Medicine',
      home:splashScreen(),// loading.dart == Drug.dart
    );
  }
}
class splashScreen extends StatelessWidget {
  const splashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(splash: Image.asset('lib/assets/logo.png'),
        nextScreen: home(),
      splashTransition: SplashTransition.scaleTransition,
      duration: 2000,
    );
  }
}

