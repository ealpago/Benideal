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
                child: Row(
                  children: [
                    Icon(
                      Icons.add_location_alt_outlined
                    ),
                    ElevatedButton(
                    style: ButtonStyle(
                      elevation: MaterialStateProperty.all(0.0),
                      backgroundColor: MaterialStateProperty.all(Colors.transparent),
                    ),
                    onPressed: (){

                    },child: Text('Mevcut konumu kullan',
                    style: TextStyle(
                      fontSize: 18.0
                    ),
                    ),
                  ),
                    SizedBox(width: 60.0),
                    Icon(
                        Icons.chevron_right
                    ),
                  ]
                ),
              )
            ],
          ),
        ),
      )
    );
  }
}
