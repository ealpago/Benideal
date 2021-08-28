import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {

  TextEditingController _startingPoint = TextEditingController();

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
            ],
          ),
        ),
      ),
    );
  }
}
