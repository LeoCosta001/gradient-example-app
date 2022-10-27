import 'package:flutter/material.dart';
import 'package:gradient_borders/gradient_borders.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gradient example',
      theme: ThemeData(),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const List<Color> gradientColors = [Color(0xFFFDEF80), Color(0xFF7CEF94)];

    return Container(
      decoration: BoxDecoration(
        color: Colors.black,
        border: const GradientBoxBorder(
          gradient: LinearGradient(
            colors: gradientColors,
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
          width: 8,
        ),
        borderRadius: BorderRadius.circular(28),
      ),
      child: Padding(
        padding: const EdgeInsets.all(50.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GradientText(
              'Eat\nSleep\nCode\nRepeat',
              style: const TextStyle(
                fontSize: 60.0,
                decoration: TextDecoration.none,
              ),
              gradientDirection: GradientDirection.ttb,
              colors: gradientColors,
            ),
          ],
        ),
      ),
    );
  }
}
