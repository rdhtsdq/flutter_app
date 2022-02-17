import 'package:flutter/material.dart';
import 'home.dart';

void main() {
  runApp(
    const Template()
  ); 
}

class Template extends StatelessWidget {
  const Template({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

