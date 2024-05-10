import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class secendscr extends StatelessWidget {
  const secendscr({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Stack(
        children: [
          Positioned(
            left: 0,
            child: Image.asset(
              "assets/images/signup_top.png",
              width: 120,
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            child: Image.asset(
              "assets/images/main_bottom.png",
              width: 60,
            ),
          ),
          Container(
            height: double.infinity,
            width: double.infinity,
            margin: EdgeInsets.only(left: 0, top: 40, right: 0, bottom: 0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "SIGNUP",
                    style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w500,
                        fontFamily: "Myfont"),
                  ),
                  SvgPicture.asset(
                    "assets/icons/signup.svg",
                    width: 200,
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
                    height: 20,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/first');
                    },
                    child: Text(
                      "SIGN UP",
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: "Myfont",
                          fontWeight: FontWeight.w500,
                          fontSize: 25),
                    ),
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.deepPurple[400]),
                        padding: MaterialStateProperty.all(EdgeInsets.symmetric(
                            vertical: 10, horizontal: 100))),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Already hava an Accout ?",
                        style: TextStyle(fontWeight: FontWeight.w200),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, '/first');
                        },
                        child: Text(
                          "  Log in",
                          style: TextStyle(fontWeight: FontWeight.w400),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "------------------------------------OR--------------------------------------",
                    style: TextStyle(fontWeight: FontWeight.w300),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.black, width: 1),
                        ),
                        padding: EdgeInsets.all(15),
                        child: SvgPicture.asset(
                          "assets/icons/facebook.svg",
                          width: 30,
                          color: Colors.deepPurple[400],
                        ),
                      ),
                      SizedBox(
                        width: 22,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.black, width: 1),
                        ),
                        padding: EdgeInsets.all(15),
                        child: SvgPicture.asset(
                          "assets/icons/twitter.svg",
                          width: 30,
                          color: Colors.deepPurple[400],
                        ),
                      ),
                      SizedBox(
                        width: 22,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.black, width: 1),
                        ),
                        padding: EdgeInsets.all(15),
                        child: SvgPicture.asset(
                          "assets/icons/google-plus.svg",
                          width: 30,
                          color: Colors.deepPurple[400],
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
    ));
  }
}
