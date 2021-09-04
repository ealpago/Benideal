import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:benideal/utilities/kConstant.dart';


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
              TextFieldWidget(hintText: 'Kalkış yeri', startingPoint: _startingPoint,icon: Icon(Icons.location_on_outlined)),
              SizedBox(height: 10.0),
              TextFieldWidget(hintText: 'Varış yeri', startingPoint: _startingPoint, icon: Icon(Icons.location_on_rounded)),
              SizedBox(height: 10.0),
              SpaceContainer(),
              Padding(
                padding: EdgeInsets.only(top: 8.0, bottom: 8.0),
                child: Row(
                  children: [
                    Padding(
                        padding: EdgeInsets.only(left: 5.0),
                        child: ElevatedButton(onPressed: (){
                         print('tapped');
                        },
                            child: Text('Bugün',
                            style: TextStyle(
                              color: Colors.blueAccent,
                            ),
                            ),
                          style: ButtonStyle(
                            elevation: MaterialStateProperty.all(0.0),
                            backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
                          ),
                        ),
                      ),
                    Spacer(),
                    Padding(
                        padding: EdgeInsets.only(right: 5.0),
                        child: ElevatedButton(onPressed: (){
                        print('tapped');
                    },
                        child: Text('1 yolcu',
                          style: TextStyle(
                            color: Colors.blueAccent,
                          ),
                        ),
                        style: ButtonStyle(
                          elevation: MaterialStateProperty.all(0.0),
                          backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
                        ),
                    ),
                      ),
                  ],
                ),
              ),
              SpaceContainer(),
         ],
        ),
      ),
      ),
    );
  }
}


