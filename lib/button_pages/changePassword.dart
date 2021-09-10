import 'package:benideal/utilities/textFieldClass.dart';
import 'package:flutter/material.dart';

class ChangePassword extends StatefulWidget {
  @override
  _ChangePasswordState createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {

  TextEditingController _startingPoint = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Şifreyi güncelle'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 30,horizontal: 20),
        child: Column(
          children: [
            TextFieldWidget(
              hintText: 'Eski şifre',
              icon: Icon(Icons.remove_red_eye_outlined),
              startingPoint: _startingPoint,
            ),
            SizedBox(height: 20,),
            TextFieldWidget(
              hintText: 'Yeni şifre',
              icon: Icon(Icons.remove_red_eye_outlined),
              startingPoint: _startingPoint,
            ),
            SizedBox(height: 20,),
            TextFieldWidget(
              hintText: 'Yeni şifre onay',
              icon: Icon(Icons.remove_red_eye_outlined),
              startingPoint: _startingPoint,
            ),
            SizedBox(height: 20,),
            TextButton(onPressed: (){
            }, child: Text('Güncelle'))
          ],
        ),
      ),
    );
  }
}
