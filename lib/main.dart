import 'package:benideal/pages/searchPage.dart';
import 'package:flutter/material.dart';
import 'package:benideal/pages/profilePage.dart';
import 'package:benideal/pages/messagesPage.dart';
import 'package:benideal/pages/publishPage.dart';
import 'package:benideal/pages/tripsPage.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {

  @override
  _MyAppState createState() => _MyAppState();
}



class _MyAppState extends State<MyApp> {
  int _currentIndex = 0;

  void onTappedBar(int index){
    setState(() {
      _currentIndex = index;
    });
  }

  final List<Widget> _children = [
    SearchPage(),
    PublishPage(),
    TripsPage(),
    MessagesPages(),
    ProfilePage()
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      themeMode: ThemeMode.dark,
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: _children[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
        selectedFontSize: 9.0,
        unselectedFontSize: 9.0,
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        selectedItemColor: Colors.blueAccent,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Ara',
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.add_circle_outline,),
            label: 'Yayınla',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.car_rental,),
            label: 'Yolculuklarım',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message_sharp,),
            label: 'Gelen Kutusu',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline,),
            label: 'Profil',
          ),
        ],
        onTap: onTappedBar,
      ),
      ),
    );
  }
}



