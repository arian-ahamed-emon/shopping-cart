import 'package:flutter/material.dart';
import 'package:shoping_chart/screens/home_screen.dart';
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Home',
      home: HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
