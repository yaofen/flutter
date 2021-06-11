import 'package:flutter/material.dart';

class My extends StatefulWidget {
  const My({Key key}) : super(key: key);

  @override
  _MyState createState() => _MyState();
}

class _MyState extends State<My> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        alignment: AlignmentDirectional.center,
        child: Text('My'),
        width: 100,
        height: 100,
        color: Colors.green,
      ),
    );
  }
}
