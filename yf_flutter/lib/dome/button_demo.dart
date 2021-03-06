import 'package:flutter/material.dart';

class ButtonDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Widget buttonBarDemo = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Theme(
            data: Theme.of(context).copyWith(
              buttonTheme: ButtonThemeData(
                  padding: EdgeInsets.symmetric(horizontal: 1.0)),
            ),
            child: ButtonBar(
              children: [
                OutlineButton(
                  child: Text('Button'),
                  onPressed: () {},
                  splashColor: Colors.grey[100],
                  borderSide: BorderSide(color: Colors.black),
                  textColor: Colors.black,
                  highlightColor: Colors.grey,
                ),
                OutlineButton(
                  child: Text('Button'),
                  onPressed: () {},
                  splashColor: Colors.orange[200],
                  borderSide: BorderSide(color: Colors.black),
                  textColor: Colors.black,
                  highlightColor: Colors.grey,
                ),
              ],
            )),
      ],
    );

    final Widget expandedButton = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
            child: OutlineButton(
          child: Text('Button'),
          onPressed: () {},
          splashColor: Colors.cyan[200],
          borderSide: BorderSide(color: Colors.black),
          textColor: Colors.black,
          highlightColor: Colors.grey,
        )),
        SizedBox(
          width: 16.0,
        ),
        Expanded(
          flex: 2,
          child: OutlineButton(
              child: Text('Button'),
              onPressed: () {},
              splashColor: Colors.grey[100],
              borderSide: BorderSide(
                color: Colors.black,
              ),
              textColor: Colors.black,
              highlightedBorderColor: Colors.red),
        ),
      ],
    );

    final Widget fixedWidthButton = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 130,
          child: OutlineButton(
            child: Text('Button'),
            onPressed: () {},
            splashColor: Colors.grey[100],
            borderSide: BorderSide(
              color: Colors.black,
            ),
            textColor: Colors.black,
            highlightedBorderColor: Colors.grey,
          ),
        )
      ],
    );

    final Widget outlineButtonDemo = Row(
      children: [
        Theme(
          data: Theme.of(context).copyWith(
              buttonColor: Theme.of(context).accentColor,
              buttonTheme: ButtonThemeData(
                textTheme: ButtonTextTheme.primary,
                shape: StadiumBorder(),
              )),
          child: OutlineButton(
            child: Text('Button'),
            onPressed: () {},
            splashColor: Colors.grey[100],
            borderSide: BorderSide(
              color: Colors.black,
            ),
            // color: Theme.of(context).accentColor,
            textColor: Colors.black,
            highlightedBorderColor: Colors.grey,
            // textTheme: ButtonTextTheme.primary,
          ),
        ),
        SizedBox(
          width: 16.0,
        ),
        OutlineButton.icon(
          icon: Icon(Icons.add),
          label: Text('Button'),
          onPressed: () {},
          splashColor: Colors.grey,
          textColor: Theme.of(context).accentColor,
        ),
      ],
    );

    final Widget raisedButtonDemo = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Theme(
          data: Theme.of(context).copyWith(
            buttonColor: Theme.of(context).accentColor,
            buttonTheme: ButtonThemeData(
              textTheme: ButtonTextTheme.primary,
              // shape: BeveledRectangleBorder(
              //   borderRadius: BorderRadius.circular(5.0),
              // ),
              shape: StadiumBorder(),
            ),
          ),
          child: RaisedButton(
            child: Text('Button'),
            onPressed: () {},
            splashColor: Colors.grey,
            elevation: 0.0,
            // color: Theme.of(context).accentColor,
            // textColor: Colors.white,
            // textTheme: ButtonTextTheme.primary,
          ),
        ),
        SizedBox(
          width: 16.0,
        ),
        RaisedButton.icon(
          icon: Icon(Icons.add),
          label: Text('Button'),
          onPressed: () {},
          splashColor: Colors.grey,
          elevation: 12.0,
          textColor: Theme.of(context).accentColor,
        ),
      ],
    );

    final Widget flatButtonDemo = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        FlatButton(
          child: Text('Button'),
          onPressed: () {},
          splashColor: Colors.grey,
          textColor: Theme.of(context).accentColor,
        ),
        FlatButton.icon(
          icon: Icon(Icons.add),
          label: Text('Button'),
          onPressed: () {},
          splashColor: Colors.grey,
          textColor: Theme.of(context).accentColor,
        ),
      ],
    );
    return Scaffold(
      appBar: AppBar(
        title: Text('ButtonDemo'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            buttonBarDemo,
            expandedButton,
            fixedWidthButton,
            outlineButtonDemo,
            raisedButtonDemo,
            flatButtonDemo
          ],
        ),
      ),
    );
  }
}
