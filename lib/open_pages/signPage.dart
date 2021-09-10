import 'package:benideal/open_pages/firstPage.dart';
import 'package:flutter/material.dart';
import 'package:benideal/utilities/textFieldClass.dart';



class SignPage extends StatefulWidget {
  @override
  _SignPageState createState() => _SignPageState();
}

class _SignPageState extends State<SignPage> {

  TextEditingController _startingPoint = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign Page'),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
        child: Column(
            children: [
              SizedBox(height: 30,),
              TextFieldWidget(hintText: 'İsim', startingPoint: _startingPoint, icon: Icon(Icons.drive_file_rename_outline)),
              SizedBox(height: 20,),
              TextFieldWidget(hintText: 'Soyisim', startingPoint: _startingPoint, icon: Icon(Icons.drive_file_rename_outline)),
              SizedBox(height: 20,),
              TextFieldWidget(hintText: 'email', startingPoint: _startingPoint, icon: Icon(Icons.mail_outline)),
              SizedBox(height: 20,),
              TextFieldWidget(hintText: 'şifre', startingPoint: _startingPoint, icon: Icon(Icons.remove_red_eye_outlined)),
              SizedBox(height: 20,),
              TextFieldWidget(hintText: 'Kimlik numarası', startingPoint: _startingPoint, icon: Icon(Icons.perm_identity)),
              SizedBox(height: 20,),
              TextButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => FirstPage()));
              }, child: Text('Kayıt ol'))
            ]
        ),
      ),
    );
  }
}
