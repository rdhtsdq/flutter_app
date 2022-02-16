import 'package:flutter/material.dart';
import 'home.dart';

void main() {
  runApp(
    Template()
  ); 
}

class Template extends StatelessWidget {
  const Template({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

