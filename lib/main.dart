import 'package:flutter/material.dart';
import 'package:rental_car/UI/Auth/login.dart';
// import 'package:rental_car/UI/Widget/navbar.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mobile App',
      // theme: ThemeData.light(useMaterial3: true),
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginScreen(),
    );
  }
}
