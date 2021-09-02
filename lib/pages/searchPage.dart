import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';


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
                  color: Colors.grey
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 8.0, bottom: 8.0),
                child: Row(
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
              ),
              Container(
                height: 1.0,
                margin: EdgeInsets.symmetric(horizontal: 1.0, vertical: 8.0),
                decoration: BoxDecoration(
                    color: Colors.grey
                ),
              ),
         ],
        ),
      ),
      ),
    );
  }
}
