import 'package:flutter/material.dart';
import 'package:todolist/Screens/Home/components/body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
      
    );
  }
}