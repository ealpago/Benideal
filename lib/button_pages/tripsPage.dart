import 'package:flutter/material.dart';

class TripsPage extends StatefulWidget {
  @override
  _TripsPageState createState() => _TripsPageState();
}

class _TripsPageState extends State<TripsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Geçmiş yolculuklarım'
        ),
      ),
    );
  }
}
