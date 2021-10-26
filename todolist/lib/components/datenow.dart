import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';


class DateNow extends StatefulWidget {
final Function? onDateChanged;
  const DateNow({
    Key? key, this.onDateChanged,
  }) : super(key: key);

  @override
  State<DateNow> createState() => _DateNowState();
}

class _DateNowState extends State<DateNow> {
  
  DateTime _selectedDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          margin:
              const EdgeInsets.symmetric(horizontal: 30,vertical: 6),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                DateFormat.yMMMMd()
                    .format(DateTime.now()),
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.normal),
              ),
              Text("Today",style: TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.bold),
                    ),
              
            
            ],
          ),
        )
      ],
    );
  }
}
