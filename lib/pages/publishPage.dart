import 'package:flutter/material.dart';
import 'package:benideal/utilities/kConstant.dart';

class PublishPage extends StatefulWidget {
  @override
  _PublishPageState createState() => _PublishPageState();
}

class _PublishPageState extends State<PublishPage> {

  TextEditingController _startingPoint = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: Text('Nereden yola çıkacaksın?',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold,
                      ) ,),
                  ),
                ],
              ),
              SizedBox(height: 40.0),
              TextFieldWidget(hintText: 'Kalkış Yeri', startingPoint: _startingPoint, icon: Icon(Icons.search)),
              SizedBox(height: 15.0),
              SizedBox(
                width: double.infinity,
                child:
                    ElevatedButton(
                    style: ButtonStyle(
                      elevation: MaterialStateProperty.all(0.0),
                      backgroundColor: MaterialStateProperty.all(Colors.transparent),
                    ),
                    onPressed: (){

                    },child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Icon(
                          Icons.my_location_outlined
                        ),
                        Text('Mevcut konumu kullan',
                          style: TextStyle(
                              fontSize: 18.0
                          ),
                        ),
                        Icon(
                            Icons.keyboard_arrow_right
                        ),
                      ],
                    ),
                  ),
              ),
            ],
          ),
        ),
      )
    );
  }
}
