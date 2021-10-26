import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:todolist/Screens/TaskScreen/components/body.dart';

class TaskPageScreen extends StatelessWidget {
  const TaskPageScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body()
    );
  }
}