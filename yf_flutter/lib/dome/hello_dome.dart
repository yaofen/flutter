import 'dart:html';

import 'package:flutter/material.dart';

class Hello extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'heloo',
        textDirection: TextDirection.ltr,
      ),
    );
  }
}
