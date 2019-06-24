import 'package:flutter/material.dart';


class Entrance extends StatefulWidget {
  Entrance({Key key}) : super(key: key);

  _EntranceState createState() => _EntranceState();
}

class _EntranceState extends State<Entrance> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text('flutter test'),
      ),
      body:Text('123'),
    );
  }
}