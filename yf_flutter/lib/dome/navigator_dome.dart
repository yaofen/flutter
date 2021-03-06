import 'package:flutter/material.dart';

class NavigatorDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FlatButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/');
                },
                child: Text('home')),
            FlatButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/about');
                },
                child: Text('About')),
          ],
        ),
      ),
    );
  }
}

// class Page extends StatelessWidget {
//   final String title;
//   Page({this.title});
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(title),
//         elevation: 0.0,
//       ),
//       floatingActionButton: FloatingActionButton(
//         child: Icon(Icons.arrow_back),
//         onPressed: () {
//           Navigator.pop(context);
//         },
//       ),
//     );
//   }
// }

class Page extends StatelessWidget {
  final String title;

  Page({this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        elevation: 0.0,
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.arrow_back),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}
