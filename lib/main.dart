// Importing important packages require to connect
// Flutter and Dart
import 'package:dataflows/homepage.dart';
import 'package:flutter/material.dart';

// Main Function
void main() {
  // Giving command to runApp() to run the app.

  // The purpose of the runApp() function is to attach
  // the given widget to the screen.
  runApp(const MyApp());
}

// MyApp extends StatelessWidget and overrides its
// build method.
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // title of the application
      title: 'DataFlows App',

      // theme of the widget
      theme: ThemeData(primarySwatch: Colors.green,),

      // Inner UI of the application
      home: Homepage(),
    );
  }
}
