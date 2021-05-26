import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Profile extends StatefulWidget {
  @override
  ProfileState createState() => new ProfileState();
}

class ProfileState extends State<Profile> {
  late double screenHeight;
  var scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    screenHeight = MediaQuery.of(context).size.height;

    final nameController = TextEditingController();

    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            elevation: 0,
            //brightness: Brightness.light,
            backgroundColor: Color(0xff263284),
            title: Text(
              'Profile',
            ),
            leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.arrow_back_ios,
                size: 20,
                color: Colors.black,
              ),
            ),
          ),
          backgroundColor: Color(0xffc6ceff),
          body: Container(
              padding: const EdgeInsets.all(20.0),
              color: Color(0xffc6ceff),
              child: new SingleChildScrollView(
                child: new ConstrainedBox(
                  constraints: new BoxConstraints(),
                  child: new Container(
                    child: new Center(
                      child: new Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          new CircleAvatar(
                            backgroundImage:
                                AssetImage('assets/programmer.png'),
                            radius: 70,
                          ),
                          new Padding(padding: EdgeInsets.only(top: 20.0)),
                          new TextFormField(
                            controller: nameController,
                            decoration: new InputDecoration(
                              labelText: "Name *",
                              fillColor: Colors.white,
                              border: new OutlineInputBorder(
                                borderRadius: new BorderRadius.circular(25.0),
                                borderSide: new BorderSide(),
                              ),
                            ),
                            validator: (val) {
                              if (val!.length == 0) {
                                return "Name can not be empty";
                              } else {
                                return null;
                              }
                            },
                            keyboardType: TextInputType.text,
                            style: new TextStyle(
                              fontFamily: "Poppins",
                            ),
                          ),
                          new Padding(padding: EdgeInsets.only(top: 20.0)),
                          new TextFormField(
                            decoration: new InputDecoration(
                              labelText: "Contact Number",
                              fillColor: Colors.white,
                              border: new OutlineInputBorder(
                                borderRadius: new BorderRadius.circular(25.0),
                                borderSide: new BorderSide(),
                              ),
                            ),
                            validator: (val) {
                              if (val!.length == 0) {
                                return "Contact number cannot be empty";
                              } else {
                                return null;
                              }
                            },
                            keyboardType: TextInputType.number,
                            style: new TextStyle(
                              fontFamily: "Poppins",
                            ),
                          ),
                          new Padding(padding: EdgeInsets.only(top: 20.0)),

                          // Column(
                          //     crossAxisAlignment: CrossAxisAlignment.stretch,
                          //     children: [DropDownButtonStack()]),
                          // new Padding(padding: EdgeInsets.only(top: 20.0)),
                          new TextFormField(
                            decoration: new InputDecoration(
                              labelText: "Email",
                              fillColor: Colors.white,
                              border: new OutlineInputBorder(
                                borderRadius: new BorderRadius.circular(25.0),
                                borderSide: new BorderSide(),
                              ),
                            ),
                            validator: (val) {
                              if (val!.length == 0) {
                                return "This field can not be empty";
                              } else {
                                return null;
                              }
                            },
                            keyboardType: TextInputType.url,
                            style: new TextStyle(
                              fontFamily: "Poppins",
                            ),
                          ),
                          new Padding(padding: EdgeInsets.only(top: 20.0)),
                          new TextFormField(
                            decoration: new InputDecoration(
                              labelText: "Emergency contact name",
                              fillColor: Colors.white,
                              border: new OutlineInputBorder(
                                borderRadius: new BorderRadius.circular(25.0),
                                borderSide: new BorderSide(),
                              ),
                            ),
                            validator: (val) {
                              if (val!.length == 0) {
                                return "This field can not be empty";
                              } else {
                                return null;
                              }
                            },
                            keyboardType: TextInputType.url,
                            style: new TextStyle(
                              fontFamily: "Poppins",
                            ),
                          ),
                          new Padding(padding: EdgeInsets.only(top: 20.0)),
                          new TextFormField(
                            decoration: new InputDecoration(
                              labelText: "Emergency contact email",
                              fillColor: Colors.white,
                              border: new OutlineInputBorder(
                                borderRadius: new BorderRadius.circular(25.0),
                                borderSide: new BorderSide(),
                              ),
                            ),
                            validator: (val) {
                              if (val!.length == 0) {
                                return "This field can not be empty";
                              } else {
                                return null;
                              }
                            },
                            keyboardType: TextInputType.url,
                            style: new TextStyle(
                              fontFamily: "Poppins",
                            ),
                          ),
                          new Padding(padding: EdgeInsets.only(top: 20.0)),
                          new TextFormField(
                            decoration: new InputDecoration(
                              labelText: "Emergency contact number",
                              fillColor: Colors.white,
                              border: new OutlineInputBorder(
                                borderRadius: new BorderRadius.circular(25.0),
                                borderSide: new BorderSide(),
                              ),
                            ),
                            validator: (val) {
                              if (val!.length == 0) {
                                return "This field can not be empty";
                              } else {
                                return null;
                              }
                            },
                            keyboardType: TextInputType.url,
                            style: new TextStyle(
                              fontFamily: "Poppins",
                            ),
                          ),
                          new Padding(padding: EdgeInsets.only(top: 20.0)),
                          Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width / 2.5,
                                  height: 50,
                                  child: RaisedButton(
                                      elevation: 5,
                                      color: Color(0xff263284),
                                      child: Text(
                                        'Exit',
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
                                new Padding(
                                    padding: EdgeInsets.only(right: 10.0)),
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width / 2.5,
                                  height: 50,
                                  child: RaisedButton(
                                      elevation: 5,
                                      color: Color(0xff263284),
                                      child: Text(
                                        'Save',
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
                  ),
                ),
              ))),
    );
  }
}
