import 'package:flutter/material.dart';

class BasicDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ContainerBoxDecorationDemo();
  }
}

class ContainerBoxDecorationDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: NetworkImage(
                  'https://img14.360buyimg.com/cms/jfs/t1/159542/6/15585/346228/605d8ec5E4b8da1e1/33b37ebdff9d6c81.jpg'),
              alignment: Alignment.topCenter,
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(
                  Colors.indigoAccent[400], BlendMode.hardLight))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            child: Icon(
              Icons.pool,
              size: 64.0,
              color: Colors.white,
            ),
            padding: EdgeInsets.all(16.0),
            margin: EdgeInsets.all(8.0),
            width: 90.0,
            height: 90.0,
            decoration: BoxDecoration(
                color: Color.fromARGB(3, 54, 255, 1),
                border: Border.all(
                    color: Colors.indigoAccent[100],
                    width: 3.0,
                    style: BorderStyle.solid),
                boxShadow: [
                  BoxShadow(
                      offset: Offset(0.0, 16.0),
                      color: Color.fromARGB(16, 20, 188, 1),
                      blurRadius: 25.0,
                      spreadRadius: -9.0)
                ],
                shape: BoxShape.circle,
                gradient: LinearGradient(colors: [
                  Color.fromARGB(7, 102, 255, 1),
                  Color.fromARGB(3, 28, 128, 1)
                ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
          ),
          // RichTextDemo(),
          // TextDemo(),
        ],
      ),
    );
  }
}

class RichTextDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
          text: 'ninghao',
          style: TextStyle(
              color: Colors.deepPurpleAccent,
              fontSize: 34.0,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.w100),
          children: [
            TextSpan(
              text: '.net',
              style: TextStyle(
                fontSize: 17.0,
                color: Colors.grey,
              ),
            )
          ]),
    );
  }
}

class TextDemo extends StatelessWidget {
  final TextStyle _textStyle = TextStyle(
    fontSize: 16.0,
  );

  final String _author = '李白';
  final String _title = '将进酒';
  @override
  Widget build(BuildContext context) {
    return Text(
      '《 $_title 》—— $_author。君不见黄河之水天上来，奔流到海不复回。君不见高堂明镜悲白发，朝如青丝暮成雪。人生得意须尽欢，莫使金樽空对月。天生我材必有用，千金散尽还复来。烹羊宰牛且为乐，会须一饮三百杯。',
      textAlign: TextAlign.left,
      style: _textStyle,
      maxLines: 3,
      overflow: TextOverflow.ellipsis,
    );
  }
}
