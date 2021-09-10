import 'package:benideal/button_pages/changeInfo.dart';
import 'package:benideal/button_pages/changePassword.dart';
import 'package:benideal/button_pages/changePhoto.dart';
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
                   Navigator.push(context, MaterialPageRoute(builder: (context) => ChangePhoto()));
                 }, child: Text('Profil resmini değiştir'),),
               SpaceContainer(),
               SizedBox(height: 30.0),
               SpaceContainer(),
               TextButton(
                 onPressed: (){
                   Navigator.push(context, MaterialPageRoute(builder: (context) => ChangePassword()));
                 }, child: Text('Şifreyi değiştir'),),
               SpaceContainer(),
               SizedBox(height: 30.0),
               SpaceContainer(),
               TextButton(
                 onPressed: (){
                   Navigator.push(context, MaterialPageRoute(builder: (context) => ChangeInfo()));
                 }, child: Text('Özgeçmişi güncelle'),),
               SpaceContainer(),
             ],
           ),
      ),
    );
  }
}

