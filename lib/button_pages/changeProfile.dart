import 'package:benideal/utilities/kConstant.dart';
import 'package:flutter/material.dart';



class ChangeProfile extends StatefulWidget {
  @override
  _ChangeProfileState createState() => _ChangeProfileState();
}

class _ChangeProfileState extends State<ChangeProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profili düzenle'
            ),
      ),
      body: Container(
           child: Column(
             children: [
               SizedBox(height: 30.0),
               SpaceContainer(),
               TextButton(
                 onPressed: (){
                 }, child: Text('Profil resmini değiştir'),),
               SpaceContainer(),
               SizedBox(height: 30.0),
               SpaceContainer(),
               TextButton(
                 onPressed: (){
                 }, child: Text('Gelen kutusu'),),
               SpaceContainer(),
               SizedBox(height: 30.0),
               SpaceContainer(),
               TextButton(
                 onPressed: (){
                 }, child: Text('Yolculuklarım'),),
               SpaceContainer(),
             ],
           ),
      ),
    );
  }
}

