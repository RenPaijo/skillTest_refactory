import 'package:flutter/material.dart';

class GetStartedCard extends StatelessWidget {
  final String title1;
  const GetStartedCard({ Key? key,required this.title1 }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Container(
        
          padding: EdgeInsets.symmetric(
            vertical: 10,
            horizontal: 7,
          ),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title1,
                style: TextStyle(
                    color: Colors.blue,
                    fontSize: 22,
                    fontWeight: FontWeight.bold
                ),  
              ),
            ],
          ),
      ),
    );
  }
}