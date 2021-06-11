import 'package:flutter/material.dart';

class History extends StatefulWidget {
  const History({Key key}) : super(key: key);

  @override
  _HistoryState createState() => _HistoryState();
}

class _HistoryState extends State<History> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('History'),
        backgroundColor: Colors.pink,
      ),
      body: Center(
        child: Column(
          children: [
            FlatButton.icon(
                onPressed: () {
                  Navigator.of(context).pushNamed('/about');
                },
                icon: Icon(Icons.ac_unit),
                label: Text('about')),
            FlatButton.icon(
                onPressed: () {
                  Navigator.of(context).pushNamed('/form');
                },
                icon: Icon(Icons.folder),
                label: Text('form')),
            FlatButton.icon(
                onPressed: () {
                  Navigator.of(context).pushNamed('/state-management');
                },
                icon: Icon(Icons.zoom_in),
                label: Text('state-management')),
            FlatButton.icon(
                onPressed: () {
                  Navigator.of(context).pushNamed('/stream');
                },
                icon: Icon(Icons.map),
                label: Text('stream')),
            FlatButton.icon(
                onPressed: () {
                  Navigator.of(context).pushNamed('/rxdart');
                },
                icon: Icon(Icons.dangerous),
                label: Text('rxdart')),
            FlatButton.icon(
                onPressed: () {
                  Navigator.of(context).pushNamed('/bloc');
                },
                icon: Icon(Icons.access_alarm),
                label: Text('bloc')),
            FlatButton.icon(
                onPressed: () {
                  Navigator.of(context).pushNamed('/animation');
                },
                icon: Icon(Icons.undo),
                label: Text('animation')),
            FlatButton.icon(
                onPressed: () {
                  Navigator.of(context).pushNamed('/mdc');
                },
                icon: Icon(Icons.sanitizer),
                label: Text('mdc')),
            FlatButton.icon(
                onPressed: () {
                  Navigator.of(context).pushNamed('/http');
                },
                icon: Icon(Icons.hail),
                label: Text('http')),
          ],
        ),
      ),
    );
  }
}
