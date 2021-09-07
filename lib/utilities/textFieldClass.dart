import 'package:flutter/material.dart';

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