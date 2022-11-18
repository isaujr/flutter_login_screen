import 'package:firebase_auth_app/src/presentation/pages/homepage.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Firebase Auth',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        fontFamily: "Poppins",
      ),
      home: const SafeArea(child: Homepage()),
    );
  }
}
