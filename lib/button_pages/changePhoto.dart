import 'package:flutter/material.dart';

class ChangePhoto extends StatefulWidget {
  @override
  _ChangePhotoState createState() => _ChangePhotoState();
}

class _ChangePhotoState extends State<ChangePhoto> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fotoğrafı güncelle'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 20),
        child: Column(
          children: [

          ],
        ),
      ),
    );
  }
}
