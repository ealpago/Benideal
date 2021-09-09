import 'package:benideal/app_pages/appMainPage.dart';
import 'package:benideal/app_pages/searchPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:benideal/utilities/textFieldClass.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  TextEditingController _startingPoint = TextEditingController();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Giriş Yap'),
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.only(left: 20,right: 20,top: 60),
          child: Column(
            children: [
              TextFieldWidget(hintText: 'email', startingPoint: _startingPoint, icon: Icon(Icons.mail_outline)),
              SizedBox(height: 20.0,),
              TextFieldWidget(hintText: 'email', startingPoint: _startingPoint, icon: Icon(Icons.mail_outline)),
              SizedBox(height: 20.0,),
              TextButton(onPressed: (){
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => AppMainPage()),
                      (Route<dynamic> route) => false,
                );
                    print('Giriş yap buton');
              }, child: Text(
                'Giriş yap'
              ))
            ],
      ),
        ),
      ),
    );
  }
}
