import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

class maniscr extends StatelessWidget {
  const maniscr({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(children: [
          Positioned(
            left: 0,
            child: Image.asset(
              "assets/images/main_top.png",
              width: 120,
            ),
          ),
          Positioned(
            left: 0,
            bottom: 0,
            child: Image.asset(
              "assets/images/main_bottom.png",
              width: 80,
            ),
          ),
          SizedBox(
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 40,
                ),
                Text(
                  "           WELCOME TO EDO",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      fontFamily: "Myfont"),
                ),
                SizedBox(
                  height: 25,
                ),
                SvgPicture.asset(
                  "assets/icons/chat.svg",
                  height: 305,
                ),
                SizedBox(
                  height: 25,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/first');
                  },
                  child: Text(
                    "LOG IN",
                    style: TextStyle(
                        fontFamily: "Myfont",
                        fontWeight: FontWeight.w500,
                        fontSize: 25,
                        color: Colors.white),
                  ),
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Colors.deepPurple[400]),
                      padding: MaterialStateProperty.all(
                          EdgeInsets.symmetric(vertical: 15, horizontal: 100))),
                ),
                SizedBox(
                  height: 25,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/second');
                  },
                  child: Text(
                    "SIGN UP",
                    style: TextStyle(
                        fontFamily: "Myfont",
                        fontWeight: FontWeight.w500,
                        fontSize: 25,
                        color: Colors.black),
                  ),
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Colors.deepPurple[100]),
                      padding: MaterialStateProperty.all(
                          EdgeInsets.symmetric(vertical: 15, horizontal: 100))),
                ),
                SizedBox(
                  height: 25,
                ),
                Container(
                  alignment: Alignment.bottomLeft,
                  child: Image.asset(
                    "assets/images/main_bottom.png",
                    height: 135,
                    width: 90,
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
