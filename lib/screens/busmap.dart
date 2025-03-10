import 'package:flutter/material.dart';

class Busmap extends StatefulWidget {
  const Busmap({super.key});

  @override
  State<Busmap> createState() => _BusmapState();
}

class _BusmapState extends State<Busmap> {
  @override
 Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child:Image.asset('busmap.png',)),
    );
  }
}