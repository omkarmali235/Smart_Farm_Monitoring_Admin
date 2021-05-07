import 'package:flutter/material.dart';
import 'package:gender_selection/gender_selection.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  DateTime _dateTime;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 40),
          height: MediaQuery.of(context).size.height - 120,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Column(
                children: <Widget>[
                  Text(
                    "Create New User",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'RobotoMono'),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "User Name",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w300,
                        color: Colors.black87),
                  ),
                  TextFormField(
                    initialValue: "",
                    obscureText: false,
                    decoration: InputDecoration(
                        contentPadding:
                            EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey[400]),
                        ),
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey[500]))),
                  ),
                  Text(
                    "User Id",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w300,
                        color: Colors.black87),
                  ),
                  TextFormField(
                    initialValue: "",
                    obscureText: false,
                    decoration: InputDecoration(
                        contentPadding:
                            EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey[400]),
                        ),
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey[500]))),
                  ),
                  Text(
                    "Mobile Number",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w300,
                        color: Colors.black87),
                  ),
                  TextFormField(
                    initialValue: "",
                    obscureText: false,
                    decoration: InputDecoration(
                        contentPadding:
                            EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey[400]),
                        ),
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey[500]))),
                  ),
                  Text(
                    "Email Address",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w300,
                        color: Colors.black87),
                  ),
                  TextFormField(
                    initialValue: "",
                    obscureText: false,
                    decoration: InputDecoration(
                        contentPadding:
                            EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey[400]),
                        ),
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey[500]))),
                  ),
                  Text(
                    _dateTime == null
                        ? 'Select Date Of Birth'
                        : _dateTime.toString(),
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w300,
                        color: Colors.black87),
                  ),
                  RaisedButton(
                    child: Text('Pick a date'),
                    onPressed: () {
                      showDatePicker(
                              context: context,
                              initialDate: DateTime(1900),
                              firstDate: DateTime(1900),
                              lastDate: DateTime.now())
                          .then((date) {
                        setState(() {
                          _dateTime = date;
                        });
                      });
                    },
                  ),
                  Text(
                    "Select Gender",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w300,
                        color: Colors.black87),
                  ),
                  GenderSelection(
                    maleText: "Male", //default Male
                    femaleText: "Female", //default Female

                    selectedGenderIconBackgroundColor:
                        Colors.indigo, // default red
                    checkIconAlignment:
                        Alignment.centerRight, // default bottomRight
                    selectedGenderCheckIcon: null, // default Icons.check
                    onChanged: (Gender gender) {
                      print(gender);
                    },
                    equallyAligned: true,
                    animationDuration: Duration(milliseconds: 400),
                    isCircular: true, // default : true,
                    isSelectedGenderIconCircular: true,
                    opacityOfGradient: 0.6,
                    padding: const EdgeInsets.all(3),
                    size: 60, //default : 120
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: new RaisedButton(
                      padding: const EdgeInsets.all(8.0),
                      textColor: Colors.black,
                      color: Colors.grey[500],
                      child: new Text("Add"),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
