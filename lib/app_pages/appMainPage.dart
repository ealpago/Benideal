import 'package:benideal/app_pages/profilePage.dart';
import 'package:benideal/app_pages/publishPage.dart';
import 'package:benideal/app_pages/searchPage.dart';
import 'package:flutter/material.dart';

class AppMainPage extends StatefulWidget {
  static const String id = 'app_main';
  @override
  _AppMainPageState createState() => _AppMainPageState();
}

class _AppMainPageState extends State<AppMainPage> {
  int _currentIndex = 0;

  void onTappedBar(int index){
    setState(() {
      _currentIndex = index;
    });
  }

  final List<Widget> _children = [
    SearchPage(),
    PublishPage(),
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


