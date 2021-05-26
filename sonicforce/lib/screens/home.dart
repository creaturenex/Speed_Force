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
  double g;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Image.asset(
              'assets/logo.png',
              // height: 250,
              // width: 250,
            ),
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
