import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:sonicforce/screens/home.dart';

import 'package:speech_to_text/speech_to_text.dart' as stt;

final FlutterTts flutterTts = FlutterTts();

class Safe extends StatefulWidget {
  @override
  _SafeState createState() => _SafeState();
}

class _SafeState extends State<Safe> {
  stt.SpeechToText _speech;
  bool _isListening = true;
  String _text = 'H';

  @override
  void initState() {
    super.initState();
    _speech = stt.SpeechToText();
    flutterTts.speak("Hi! Are you okay?");
    // setState(() {
    //   _listen();
    // });
  }

  // Future _speak(String str) async {
  //   await flutterTts.speak(str);
  // }

  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: AvatarGlow(
        animate: _isListening,
        glowColor: Color(0xff87dcb2),
        endRadius: 75.0,
        duration: const Duration(milliseconds: 8000),
        repeatPauseDuration: const Duration(milliseconds: 100),
        repeat: true,
        child: FloatingActionButton(
          onPressed: _listen,
          child: Icon(_isListening ? Icons.mic : Icons.mic_none),
          backgroundColor: Color(0xff87dcb2),
        ),
      ),
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
            Text(
              _text,
              style: TextStyle(
                fontFamily: 'Open-Dyslexic',
                fontSize: 32.0,
                color: Colors.black,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _listen() async {
    if (!_isListening) {
      bool available = await _speech.initialize(
        onStatus: (val) => print('onStatus: $val'),
        onError: (val) => print('onError: $val'),
      );
      if (available) {
        setState(() => _isListening = true);
        _speech.listen(
          onResult: (val) => setState(() {
            _text = val.recognizedWords;
            if (_text == "Yes") {
              print(_text);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Home()),
              );
            }
            // if (val.hasConfidenceRating && val.confidence > 0) {
            //   _confidence = val.confidence;
            // }
          }),
        );
      }
    } else {
      setState(() => _isListening = false);
      _speech.stop();
    }
  }
}
