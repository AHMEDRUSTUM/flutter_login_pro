import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

class firstscr extends StatelessWidget {
  const firstscr({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Positioned(
              child: Image.asset(
                "assets/images/main_top.png",
                width: 150,
              ),
              left: 0,
            ),
            Positioned(
              child: Image.asset(
                "assets/images/login_bottom.png",
                width: 120,
              ),
              bottom: 0,
              right: 0,
            ),
            Container(
              width: double.infinity,
              height: double.infinity,
              margin: EdgeInsets.only(left: 0, top: 40, right: 0, bottom: 0),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "LOGIN",
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w500,
                          fontFamily: "Myfont"),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    SvgPicture.asset(
                      "assets/icons/login.svg",
                      width: 300,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      child: TextField(
                        obscureText: false,
                        keyboardType: TextInputType.name,
                        textInputAction: TextInputAction.next,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          prefixIcon: Icon(Icons.person),
                          hintText: "Your Email",
                          hintStyle: TextStyle(fontWeight: FontWeight.w100),
                        ),
                      ),
                      width: 280,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.deepPurple[100],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      child: TextField(
                        obscureText: true,
                        keyboardType: TextInputType.name,
                        textInputAction: TextInputAction.next,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          prefixIcon: Icon(Icons.lock),
                          hintText: "Password",
                          hintStyle: TextStyle(fontWeight: FontWeight.w100),
                          suffixIcon: Icon(Icons.visibility),
                        ),
                      ),
                      width: 280,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.deepPurple[100],
                      ),
                    ),
                    SizedBox(
                      height: 60,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/first');
                      },
                      child: Text(
                        "LOG IN",
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: "Myfont",
                          fontWeight: FontWeight.w500,
                          fontSize: 25,
                        ),
                      ),
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.deepPurple[400]),
                          padding: MaterialStateProperty.all(
                              EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 100))),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Dont hava an Account?",
                          style: TextStyle(fontWeight: FontWeight.w200),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, '/second');
                          },
                          child: Text(
                            "  Sign up",
                            style: TextStyle(fontWeight: FontWeight.w400),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
