import 'package:date_picker_timeline/date_picker_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:todolist/Screens/Home/components/getstarted_card.dart';
import 'package:todolist/Screens/Home/components/img_header.dart';
import 'package:todolist/Screens/Home/components/task_card_widget.dart';
import 'package:todolist/Screens/Home/components/text_header.dart';
import 'package:todolist/Screens/TaskScreen/task_screen.dart';
import 'package:todolist/components/datenow.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int _selectedNavbar = 0;

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  Future<void> showInformationDialog(BuildContext context) async {
    return await showDialog(
        context: context,
        builder: (context) {
          final TextEditingController _textEditingController =
              TextEditingController();
          final TextEditingController _textEditingController2 =
              TextEditingController();
          DateTime _dateTime;

          bool isChecked = false;
          return StatefulBuilder(builder: (context, setState) {
            return AlertDialog(
              content: Form(
                  key: _formKey,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      TextFormField(
                        controller: _textEditingController,
                        validator: (value) {
                          return value!.isNotEmpty ? null : "Invalid Field";
                        },
                        decoration: InputDecoration(hintText: "Title"),
                      ),
                      TextFormField(
                        controller: _textEditingController2,
                        validator: (value) {
                          return value!.isNotEmpty ? null : "Invalid Field";
                        },
                        decoration:
                            InputDecoration(hintText: "Enter Some Text "),
                      ),

                      // Row(
                      //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      //   children: [
                      //     Text("Choice Box"),
                      //     Checkbox(
                      //         value: isChecked,
                      //         onChanged: (checked) {
                      //           setState((){
                      //             isChecked = checked!;
                      //           }) ;
                      //         })
                      //   ],
                      // )
                    ],
                  )),
              actions: <Widget>[
                TextButton(
                  child: Text('Add'),
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      Navigator.of(context).pop();
                    }
                  },
                )
              ],
            );
          });
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white10,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: ListView(
          children: <Widget>[
            SizedBox(
              height: 7,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Container(
                color: Colors.white54,
                height: 80,
                padding: EdgeInsets.only(
                  left: 10,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    ImgHeader(
                      imgheader: 'assets/images/aldan.png',
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    TextHeader(
                      TextName: 'Aldan Maulana Fajri',
                      TextNotif: '*1 Tugas Tersisa',
                    ),
                  ],
                ),
              ),
            ),
            Row(
              children: [
                Container(
                  margin:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 6),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        DateFormat.yMMMMd().format(DateTime.now()),
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.normal),
                      ),
                      Text(
                        "Today",
                        style: TextStyle(
                            fontSize: 23, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                )
              ],
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 24),
              child: DatePicker(
                DateTime.now(),
                height: 80,
                width: 60,
                initialSelectedDate: DateTime.now(),
                selectionColor: Colors.blue,
                selectedTextColor: Colors.white,
                dateTextStyle: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Colors.grey),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 7),
              child: SafeArea(
                child: Container(
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(),
                  child: Stack(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          GetStartedCard(
                              title1: 'Task List', 
                          ),
                          TaskCardWidget(
                            title: 'Ngoding',
                            note: 'Flutter',
                            date: 'Minggu, 27 Oktober 2021',
                          ),
                          TaskCardWidget(
                            title: 'game',
                            note: 'Bermain Game',
                            date: 'Minggu, 27 Oktober 2021',
                          ),
                          TaskCardWidget(
                            title: 'Ngoding',
                            note: 'Dart',
                            date: 'Minggu, 27 Oktober 2021',
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  GestureDetector(
                    onTap: () {},
                    child: Positioned(
                      bottom: 0,
                      child: Container(
                        width: 50,
                        height: 50,
                        child: Icon(
                          Icons.task,
                          color: Colors.black,
                          size: 30,
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () async {
                      await showInformationDialog(context);
                    },
                    child: Positioned(
                      bottom: 0,
                      child: Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(20)),
                        child: Icon(
                          Icons.add,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Positioned(
                      bottom: 0,
                      left: 0,
                      child: Container(
                        width: 50,
                        height: 50,
                        child: Icon(
                          Icons.settings,
                          color: Colors.black,
                          size: 30,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),

      // bottomNavigationBar: BottomNavigationBar(
      //   items: const <BottomNavigationBarItem>[
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.task),
      //       title: Text('Task'),
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.add),
      //       title: Text('Add'),
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.settings),
      //       title: Text('Setting'),
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.person),
      //       title: Text('Akun'),
      //     ),
      //   ],
      //   // currentIndex: _selectedNavbar,
      //   selectedItemColor: Colors.purple,
      //   unselectedItemColor: Colors.grey,
      //   showUnselectedLabels: true,
      //   // onTap: _changeSelectedNavBar,
      // ),
    );
  }
}
