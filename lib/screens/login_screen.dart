import 'package:flutter/material.dart';
import 'package:hypertransit/screens/welcome_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(onPressed: (){
           Navigator.push(context,MaterialPageRoute(builder: (context) => welcomeScreen(),));
        }, icon:Icon(Icons.arrow_back,
              color: Colors.black,
              size: 30,) ),
      ),

      body: Center(
        
      ),
    );
  }
}