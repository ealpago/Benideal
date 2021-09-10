import 'package:flutter/material.dart';

class ChangeInfo extends StatefulWidget {
  @override
  _ChangeInfoState createState() => _ChangeInfoState();
}

class _ChangeInfoState extends State<ChangeInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Özgeçmişi güncelle'),
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
