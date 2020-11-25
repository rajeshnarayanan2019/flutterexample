import 'package:flutter/material.dart';



class LaunchScreen extends StatefulWidget {
  @override
  _LanchScreenState createState() => _LanchScreenState();
}

class _LanchScreenState extends State<LaunchScreen> {

  var data = null;
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 20, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 1: Business',
      style: optionStyle,
    ),
    Text(
      'Index 2: School',
      style: optionStyle,
    ),
    Text(
      'Index 3: Test',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });

    Navigator.pushNamed(context, '/home');
  }


  void _read() async {

    try {
      //Navigator.pushReplacementNamed(context, '/home'); // won't show back button
      Navigator.pushNamed(context, '/home');

      print("reading method invoked");

      print("reading method invoked");





    } catch (e) {
      print(e);
    }
  }





  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Firebase Storage"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              child: _widgetOptions.elementAt(_selectedIndex),
              height: 300,
            ),
            RaisedButton(
              child: Text("Choose Image"),
              onPressed: () {
                _read();
              },

            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Business',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'School',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'test',
          ),

        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        unselectedItemColor:Colors.black,
        onTap: _onItemTapped,
      ),
    );
  }
}
