import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/cupertino.dart';

class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {

  TextEditingController _startingPoint = TextEditingController();

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[850],
      body:SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
          child: Column(
            children: [
              Row(
                children: [
                  Text('Yolculuk ara',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                    ) ,),
                ],
              ),
              SizedBox(height: 40.0),
              TextField(
                style: TextStyle(
                  color: Colors.white
                ),
                controller: _startingPoint,
                decoration: InputDecoration(
                  fillColor: Colors.grey[800],
                  hintText: 'Kalkış yeri',
                  hintStyle: TextStyle(
                    color: Colors.blueGrey
                  ),
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: const BorderRadius.all(
                      Radius.circular(20.0),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10.0),
              TextField(
                controller: _startingPoint,
                decoration: InputDecoration(
                  fillColor: Colors.grey[800],
                  hintText: 'Varış yeri',
                  hintStyle: TextStyle(
                      color: Colors.blueGrey
                  ),
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: const BorderRadius.all(
                      Radius.circular(20.0),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10.0),
              Container(
                height: 1.0,
                margin: EdgeInsets.symmetric(horizontal: 1.0, vertical: 8.0),
                decoration: BoxDecoration(
                  color:  Colors.blue
                ),
              ),
              Row(
                children: [
                    Padding(
                      padding: EdgeInsets.only(left: 5.0),
                      child: ElevatedButton(onPressed: (){
                       print('tapped');
                      },
                          child: Text('button',
                          style: TextStyle(
                            color: Colors.blueAccent,
                          ),
                          ),
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(Colors.grey.shade800),
                        ),
                      ),
                    ),
                  Spacer(),
                  Padding(
                      padding: EdgeInsets.only(right: 5.0),
                      child: ElevatedButton(onPressed: (){
                      print('tapped');
                  },
                      child: Text('button',
                        style: TextStyle(
                          color: Colors.blueAccent,
                        ),
                      ),
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(Colors.grey.shade800),
                      ),
                  ),
                    ),
                ],
              ),
         ],
        ),
      ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        backgroundColor: Colors.grey[850],
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.search,
            color: Colors.white,
            ),
            label: 'Ara',
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.add_circle_outline,
              color: Colors.white,),
            label: 'Yayınla',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.car_rental,
              color: Colors.white,
            ),
              label: 'Yolculuklarım',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message_sharp,
              color: Colors.white,
            ),
            label: 'Gelen Kutusu',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline,
              color: Colors.white,
            ),
            label: 'Profil',
          ),
        ],
        onTap: (index){
           setState(() {
             _currentIndex = index;
           });
        },
      ),
    );
  }
}
