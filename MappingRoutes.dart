// Developed on DartPad
// Author: Nisarg Chokshi

import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      // Overriding the Default Route Property '/' to '/home'
      initialRoute: '/home',
      routes: {
        '/': (context) => Loading(),
        '/home': (context) => Home(),
        '/location': (context) => ChooseLocation(),
      },
    ));

class Home extends StatefulWidget {
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0),
              child: FlatButton.icon(
                onPressed: () {
                  Navigator.pushNamed(context, '/location');
                },
                icon: Icon(Icons.edit_location),
                label: Text("Edit Location"),
                color: Colors.yellow,
              ), //Flatbutton icon
            ), // Padding
          ], // Widget
        ), // Column
      ), // SafeArea
    ); // Scaffold
  }
}

class ChooseLocation extends StatefulWidget {
  _ChooseLocationState createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  void getData() async {
    //Simulating a Network Request for a UserName
    String username = await Future.delayed(Duration(seconds: 3), () {
      return 'John Doe';
    }); // Future.delayed

    //Simulating a Network Request to get BIO of the User
    String bio = await Future.delayed(Duration(seconds: 2), () {
      return "vegan, musician, swimmer";
    }); // Future.delayed
    
print("Username : $username \nBIO : $bio");
  }

  void initState() {
    super.initState();
    getData();
    print("This line of Code will run independently");
  }

  Widget build(BuildContext context) {
    print("initState function for build");
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text("Choose a Location"),
        centerTitle: true,
        elevation: 0,
      ), // AppBar
    ); // Scaffold
  }
}

class Loading extends StatefulWidget {
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text("Loading Screen"),
    ); // Scaffold
  }
}
