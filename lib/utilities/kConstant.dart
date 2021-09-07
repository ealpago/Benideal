import 'package:flutter/material.dart';


class SpaceContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 1.0,
        margin: EdgeInsets.symmetric(horizontal: 1.0, vertical: 8.0),
        decoration: BoxDecoration(
            color: Colors.grey
        ),
      ),
    );
  }
}




