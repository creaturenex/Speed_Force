import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sonicforce/screens/account.dart';
import 'package:sensors/sensors.dart';
import 'package:sonicforce/screens/safe.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late double g;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        //brightness: Brightness.light,
        backgroundColor: Color(0xff263284),
        title: Text(
          'Home',
        ),
        //   leading: IconButton(
        //     onPressed: () {
        //       Navigator.pop(context);
        //     },
        //     icon: Icon(
        //       Icons.arrow_back_ios,
        //       size: 20,
        //       color: Colors.black,
        //     ),
        //   ),
      ),
      backgroundColor: Color(0xffc6ceff),
      body: Container(
        child: Column(
          children: [
            new Padding(padding: EdgeInsets.only(top: 20.0)),
            Image.asset(
              'assets/logo.png',
              // height: 250,
              // width: 250,
            ),
            new Padding(padding: EdgeInsets.only(top: 20.0)),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(
                'Welcome! Speed Force\'s purpose is to detect a crash and to inform your designated emergency contact person that a possible crash has occurred. While similar tools exist, to our knowledge the nearby contacts feature is not incorporated',
                style: GoogleFonts.raleway(
                  textStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 19,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            new Padding(padding: EdgeInsets.only(top: 20.0)),
            Row(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width / 2,
                  height: 60,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: RaisedButton(
                      elevation: 5,
                      color: Color(0xff263284),
                      child: Text(
                        'Stop',
                        style: GoogleFonts.playfairDisplay(
                          textStyle: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      onPressed: () {
                        accelerometerEvents.listen((AccelerometerEvent event) {
                          g = sqrt(event.x * event.x +
                              event.y * event.y +
                              event.z * event.z);
                          if (g > 13) {
                            g = 5;
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Safe()),
                            );
                          }
                        });
                      },
                    ),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width / 2,
                  height: 60,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: RaisedButton(
                      elevation: 5,
                      color: Color(0xff263284),
                      child: Text(
                        'Run',
                        style: GoogleFonts.playfairDisplay(
                          textStyle: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Profile()),
                        );
                      },
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
