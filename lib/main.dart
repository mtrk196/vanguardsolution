import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:vanguardsolution/login.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(primaryColor: Colors.green, accentColor: Colors.white),
    debugShowCheckedModeBanner: false,
    home: VanguardApp(),
  ));
}

class VanguardApp extends StatefulWidget {
  @override
  _VanguardAppState createState() => _VanguardAppState();
}

class _VanguardAppState extends State<VanguardApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("lib/img/startscreenbg.png"),
                  fit: BoxFit.fill)),
        ),
        Positioned(
          child: Container(
            height: 150,
            width: 450,
            alignment: Alignment.topCenter,
            decoration: BoxDecoration(
                image: DecorationImage(
              image: AssetImage("lib/img/vslnlogopng.png"),
            )),
          ),
        ),
        Positioned(
          top: 80,
          left: 10,
          child: Container(
            height: 400,
            width: 400,
            child: Lottie.asset('assets/lottie.json'),
          ),
        ),
        Positioned(
          top: 410,
          left: 50,
          child: Text("Hope is our middle name",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
        ),
        Positioned(
          top: 450,
          left: 15,
          child: Text(
              "Our known Quality Service allows us to provide\n all our customers with an efficient, seamless \n and worry-free \"Remote IT department\".",
              style: TextStyle(fontSize: 18.5)),
        ),
        Positioned(
          top: 520,
          left: 30,
          child: FlatButton(
            color: Colors.red,
            child: Text(
              "Login",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 150),
            splashColor: Colors.green,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            onPressed: () {
              Route loginRoute =
                  MaterialPageRoute(builder: (context) => LoginPage());
              Navigator.push(context, loginRoute);
            },
          ),
        ),
        Positioned(
          top: 580,
          left: 30,
          child: FlatButton(
            color: Colors.red,
            child: Text(
              "Browse As Guest",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 100),
            splashColor: Colors.green,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            onPressed: () {},
          ),
        )
      ],
    ));
  }
}
