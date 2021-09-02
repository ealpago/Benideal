import 'package:flutter/material.dart';

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
              TextField(
                style: TextStyle(
                    color: Colors.white
                ),
                controller: _startingPoint,
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.search
                  ),
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
              SizedBox(height: 15.0),
              SizedBox(
                width: double.infinity,
                child: FlatButton(
                  color: Colors.transparent,
                  onPressed: (){

                  },child: Text('Deneme'),
                ),
              )
            ],
          ),
        ),
      )
    );
  }
}
