import 'package:flutter/material.dart';
import 'pages/home_page/home_widget.dart';

void main() => runApp(const SafeGuardHerApp());

class SafeGuardHerApp extends StatelessWidget {
  const SafeGuardHerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'SafeGuardHer',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomeWidget(),
    );
  }
}