// Developed on DartPad
// Author : Nisarg Chokshi

import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: User(),
    )); // MaterialApp

class User extends StatefulWidget {
  _UserState createState() => _UserState();
}

class _UserState extends State<User> {
  // Setting Default Age as 20 Years
  int age = 20;

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff2E3754),
      appBar: AppBar(
        title: Text("User Details Card"),
        centerTitle: true,
        backgroundColor: Color(0xFFFE8B0E),
        elevation: 0.0,
      ), // AppBar
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Set State Triggers the Build Widget
          setState(() {
            age++;
          });
        },
        child: Icon(Icons.add),
        backgroundColor: Color(0xFFFE8B0E),
      ), // Action Button
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://img2.pngio.com/d-angelo-russell-profile-hd-png-download-transparent-png-image-dangelo-russell-png-860_829.png"),
                radius: 40.0,
              ), // CenterAvatar
            ), // Center
            Text(
              "Name",
              style: TextStyle(
                color: Color(0xFFFE8B0E),
                letterSpacing: 2.0,
              ), // TextStyle
            ), // Text
            SizedBox(
              height: 10.0,
            ),
            Text(
              "John Doe",
              style: TextStyle(
                color: Colors.white,
                letterSpacing: 2.0,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ), // TextStyle
            ), // Text
            SizedBox(height: 30.0),
            Text(
              "Age",
              style: TextStyle(
                color: Color(0xFFFE8B0E),
                letterSpacing: 2.0,
              ), // TextStyle
            ), // Text
            SizedBox(
              height: 10.0,
            ),
            Text(
              "$age years",
              style: TextStyle(
                color: Colors.white,
                letterSpacing: 2.0,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ), // TextStyle
            ), // Text
            SizedBox(height: 30.0),
            Row(
              children: <Widget>[
                Icon(
                  Icons.email,
                  color: Color(0xFFFE8B0E),
                ), // Icon
                SizedBox(width: 10.0),
                Text(
                  "john3doe@gmail.com",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                    letterSpacing: 1.0,
                  ), // TextStyle
                ), // Text
              ], // Widget
            ), // Row
          ], // Widgets
        ), // Column
      ), // Padding
    ); // Scaffold
  }
}
