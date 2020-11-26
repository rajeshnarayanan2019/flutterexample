import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff258DED),
      height: 400.0,
      alignment: Alignment.center,
      child: Column(
        children: <Widget>[
          Container(
            height: 200.0,
            width: 200.0,
            decoration: new BoxDecoration(
                image: DecorationImage(
                    image: new AssetImage('assets/Avatar1.png'),
                    fit: BoxFit.fill
                ),
                shape: BoxShape.circle
            ),
          ),
          Container(
            child:Text('Welcome to Prime Message',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontFamily: 'Aleo',
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.bold,
                  fontSize: 25.0,
                  color: Colors.white
              ),
            ),
          ),
        ],
      ),
    );
  }
}
