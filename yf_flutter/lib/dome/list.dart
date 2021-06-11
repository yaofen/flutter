import 'package:flutter/material.dart';

class ListTest extends StatelessWidget {
  const ListTest({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Text('ListTest'),
        width: 100,
        height: 100,
        color: Colors.yellow,
      ),
    );
  }
}
