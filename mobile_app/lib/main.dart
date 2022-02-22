import 'package:flutter/material.dart';
import 'home.dart';
import 'login_view.dart';

void main() {
  runApp(
    const Template()
  ); 
}

class Template extends StatelessWidget {
  const Template({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}

