import 'package:flutter/material.dart';


class SpaceContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 1.0,
      margin: EdgeInsets.symmetric(horizontal: 1.0, vertical: 8.0),
      decoration: BoxDecoration(
          color: Colors.grey
      ),
    );
  }
}


// ignore: must_be_immutable
class TextFieldWidget extends StatelessWidget {

  String hintText;
  TextEditingController startingPoint;
  Icon icon;

  TextFieldWidget({required this.hintText, required this.startingPoint, required this.icon});


  @override
  Widget build(BuildContext context) {
    return TextField(
      style: TextStyle(
          color: Colors.white
      ),
      controller: startingPoint,
      decoration: InputDecoration(
        prefixIcon: icon,
        fillColor: Colors.grey[800],
        hintText:  hintText,
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
    );
  }
}


