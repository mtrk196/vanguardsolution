import 'dart:ui';

import 'package:flutter/material.dart';

// import 'main.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("lib/img/loginscreenbgj.png"),
                    fit: BoxFit.fill)),
          ),
          Positioned(
            top: 600,
            left: 10,
            child: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back),
              iconSize: 35,
            ),
          ),
          Positioned(
              /*top: 50,
              left: 80,*/
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  child: Text(
                "Welcome",
                style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              )),
              Divider(),
              RaisedButton(
                onPressed: () {},
                shape: Border.all(color: Colors.black, width: 5.9),
                child: Text(
                  "Login With Google".toUpperCase(),
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
                textColor: Colors.white,
                //padding: EdgeInsets.symmetric(vertical: 10, horizontal: 40),
              ),
              Container(
                  child: Text(
                "Or Login with email".toUpperCase(),
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              )),
              Divider(),
              RaisedButton(
                onPressed: () {},
                color: Colors.red,
                child: Text(
                  "Login".toUpperCase(),
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 100),
                splashColor: Colors.green,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)),
              ),
              Divider(),
              Container(
                  child: Text(
                "Forgot password?".toUpperCase(),
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                ),
              )),
              Divider(),
              RaisedButton(
                onPressed: () {},
                color: Colors.red,
                child: Text(
                  "Create Account".toUpperCase(),
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 45),
                splashColor: Colors.green,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
              ),
            ],
          ))
        ],
      ),
    );
  }
}

/*

Container(
                child: Text(
                  "Welcome",
                  style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
              ),
            ),
          ),
          Positioned(
            top: 105,
            left: 75,
            child: RaisedButton(
              onPressed: () {},
              shape: Border.all(color: Colors.black, width: 5.9),
              child: Text(
                "Login With Google",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              textColor: Colors.white,
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 40),
            ),
          ),

 */
