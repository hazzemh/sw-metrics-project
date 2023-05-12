import 'package:flutter/material.dart';
import 'package:sw_metrics_project/Screens/LOC_screen.dart';
import 'package:sw_metrics_project/Screens/TCF_Screen.dart';
import 'package:sw_metrics_project/Screens/UfpScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'sw metrics project',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      home: UfpScreen(),
      routes: {
        'ufp' :(context) => UfpScreen(),
        'tcf' :(context) => TCFScreen(),
        'loc' :(context) => LocScreen()
      },
    );
  }
}


