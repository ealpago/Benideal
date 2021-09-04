import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(
          'Hakkımda'
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
            child: Row(

                mainAxisAlignment: MainAxisAlignment.spaceBetween ,
                children: [
                  Text('Emre Alpago',
                  style: TextStyle(
                    fontSize: 30.0
                  ),),
                  CircleAvatar(
                    radius: 50,
                  ),
                ],
              ),
          ),
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
        ],
      )
    );
  }
}
