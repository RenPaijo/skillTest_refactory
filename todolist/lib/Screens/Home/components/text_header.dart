// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';


class TextHeader extends StatelessWidget {
  final String TextName;
  final String TextNotif;
  
  const TextHeader({
    Key? key, required this.TextName,required this.TextNotif,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            TextName,
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black),
          ),
          SizedBox(
            height: 7,
          ),
          Text(
            TextNotif,
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.orange),
          ),
        ],
      ),
    );
  }
}
