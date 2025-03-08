import 'package:flutter/material.dart';
import 'package:hypertransit/screens/welcome_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'HyperTransit',
      theme: ThemeData(
        
        colorScheme: ColorScheme.fromSeed(seedColor:Colors.white),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: welcomeScreen(),
    );
  }
}


