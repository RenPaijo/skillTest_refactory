import 'package:flutter/material.dart';
import 'package:flutter_signin_button/button_builder.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:todolist/Screens/Home/home_screens.dart';
import 'package:todolist/constants.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 180),
            child: Column(
              children: <Widget>[
                Center(
                  child: Text(
                    "TODO APP",
                    style: TextStyle(
                        fontWeight: FontWeight.w900,
                        fontSize: 20,
                        color: Colors.black),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  child: SvgPicture.asset(
                    "assets/icons/welcome-screen.svg",
                    width: 320,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                SignInButtonBuilder(
                  width: 200,
                  height: 50,
                  text: 'Sign in with Gmail',
                  fontSize: 16,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return HomeScreen();
                        },
                      ),
                    );
                  },
                  backgroundColor: primaryColor,
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
