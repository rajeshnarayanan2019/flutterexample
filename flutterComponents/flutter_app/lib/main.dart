import 'package:flutter/material.dart';
import 'package:flutter_app/screens/lanchscreen.dart';
import 'package:flutter_app/screens/homescreen.dart';
import 'package:flutter_app/screens/profile.dart';

void main() {
  runApp(MyAPP());
}

class MyAPP extends StatefulWidget {
  @override
  _MyAPPState createState() => _MyAPPState();
}

class _MyAPPState extends State<MyAPP> {
  @override
  Widget build(BuildContext context) {

          return MaterialApp(
            initialRoute: '/',
            routes: {
              '/': (context) => Scaffold(
                body: LaunchScreen(),
              ),
              '/home': (context) => Scaffold(
                appBar: AppBar(
                  title: Text("My App home screen"),
                  actions: <Widget>[
                  //  getActions(context, authState),
                  ],
                ),
                body: HomeScreeen(),

              ),
              '/profile': (context) => Scaffold(
                appBar: AppBar(
                  title: Text("Profile page"),
                  actions: <Widget>[
                    //  getActions(context, authState),
                  ],
                ),
                body: Profile(),

              )
            },
          );

  }
}
