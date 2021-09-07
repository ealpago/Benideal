import 'package:benideal/utilities/kConstant.dart';
import 'package:flutter/material.dart';
import 'package:benideal/button_pages/changeProfile.dart';
import 'package:benideal/button_pages/messagesPage.dart';
import 'package:benideal/button_pages/tripsPage.dart';

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
          SizedBox(height: 30.0),
          SpaceContainer(),
          TextButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => ChangeProfile()));
          }, child: Text('Profili düzenle'),),
          SpaceContainer(),
          SizedBox(height: 30.0),
          SpaceContainer(),
          TextButton(
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => MessagePage()));
            }, child: Text('Gelen kutusu'),),
          SpaceContainer(),
          SizedBox(height: 30.0),
          SpaceContainer(),
          TextButton(
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => TripsPage()));
            }, child: Text('Yolculuklarım'),),
          SpaceContainer(),


        ],
      )
    );
  }
}
