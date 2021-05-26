import 'package:flutter/material.dart';
import 'package:sonicforce/screens/home.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Splash(),
  ));
}

class Splash extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      Duration(seconds: 3),
      () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Home(),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // body: Container(
      //   constraints: BoxConstraints.expand(),
      //   decoration: BoxDecoration(
      //       image: DecorationImage(
      //           image: AssetImage("assets/images/womxn.png"),
      //           fit: BoxFit.cover)),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 60,
              ),
              Image.asset(
                'assets/logo.png',
                // height: 250,
                // width: 250,
              ),
              SizedBox(
                height: 25,
              ),
            ]),
      ),
    );
  }
}
