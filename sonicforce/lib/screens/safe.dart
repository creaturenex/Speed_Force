import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Safe extends StatefulWidget {
  @override
  _SafeState createState() => _SafeState();
}

class _SafeState extends State<Safe> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Hi! Are you okay?',
              style: GoogleFonts.playfairDisplay(
                textStyle: TextStyle(
                  color: Colors.black,
                  fontSize: 34,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width / 2.5,
                    height: 50,
                    child: RaisedButton(
                        elevation: 5,
                        color: Color(0xff263284),
                        child: Text(
                          'Yes',
                          style: GoogleFonts.montserrat(
                            textStyle: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        onPressed: () {}),
                  ),
                  new Padding(padding: EdgeInsets.only(right: 10.0)),
                  Container(
                    width: MediaQuery.of(context).size.width / 2.5,
                    height: 50,
                    child: RaisedButton(
                        elevation: 5,
                        color: Color(0xff263284),
                        child: Text(
                          'No',
                          style: GoogleFonts.montserrat(
                            textStyle: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        onPressed: () {}),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
