import 'dart:async';

import 'package:flutter/material.dart';

class StreamDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('StreamDemo'),
        elevation: 0.0,
      ),
      body: StreamDemoHome(),
    );
  }
}

class StreamDemoHome extends StatefulWidget {
  @override
  _StreamDemoHomeState createState() => _StreamDemoHomeState();
}

class _StreamDemoHomeState extends State<StreamDemoHome> {
  StreamSubscription _streamDemoSubscription;
  StreamController<String> _streamDemo;
  StreamSink _sinkDemo;
  String _data = '...';

  @override
  void dispose() {
    _streamDemo.close();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();

    print('Create a stream.');
    // Stream<String> _streamDemo = Stream.fromFuture(fetchData());
    _streamDemo = StreamController.broadcast();
    _sinkDemo = _streamDemo.sink;

    print('Start listening on a stream.');
    _streamDemoSubscription =
        _streamDemo.stream.listen(onData, onError: onError, onDone: onDone);

    _streamDemo.stream.listen(onDataTwo, onError: onError, onDone: onDone);

    print('Initialize completed.');
  }

  void onDone() {
    print('Done!');
  }

  void onError(error) {
    print('Error: $error');
  }

  void onData(String data) {
    setState(() {
      _data = data;
    });
    print('$data');
  }

  void onDataTwo(String data) {
    print('onDataTwo: $data');
  }

  void _pauseStream() {
    print('Pause subscription');
    _streamDemoSubscription.pause();
  }

  void _resumeStream() {
    print('Resume subscription');
    _streamDemoSubscription.resume();
  }

  void _cancelStream() {
    print('Cancel subscription');
    _streamDemoSubscription.cancel();
  }

  void _addDataToStream() async {
    print('Add data to stream.');

    String data = await fetchData();
    // _streamDemo.add(data);
    _sinkDemo.add(data);
  }

  Future<String> fetchData() async {
    await Future.delayed(Duration(seconds: 5));
    // throw 'Something happened';
    return 'hello ~';
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Text(_data),
            StreamBuilder(
              stream: _streamDemo.stream,
              initialData: '...',
              builder: (context, snapshot) {
                return Text('${snapshot.data}');
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                FlatButton(
                  child: Text('Add'),
                  onPressed: _addDataToStream,
                ),
                FlatButton(
                  child: Text('Pause'),
                  onPressed: _pauseStream,
                ),
                FlatButton(
                  child: Text('Resume'),
                  onPressed: _resumeStream,
                ),
                FlatButton(
                  child: Text('Cancel'),
                  onPressed: _cancelStream,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}


/*

///订阅来自[Stream]的事件
///当你使用[Stream.listen]监听[Stream]时，
///返回一个[StreamSubscription]对象。
///订阅向监听器提供事件，
///并保存用于处理事件的回调函数。
///订阅也可以用来退订事件，
///或暂时暂停流中的事件。
StreamSubscription 


///控制流的控制器。
///这个控制器允许发送data, error和done事件
///这个类可以用来创建一个简单的流
///可以监听，并将事件推送到该流。
///可以检查流是否暂停，以及是否
///它是否有订阅者，以及当任何一个
/ / /这些改变。
StreamController

///一个同步和异步接收流事件的对象。
///
/// A [StreamSink]结合了[StreamConsumer]和[EventSink]的方法。
///
///当[addStream]被调用时[EventSink]方法不能被使用。
///一旦[addStream]的[Future]完成一个值，则
/// [EventSink]方法可以再次使用。
///
///如果[addStream]在任何[EventSink]方法之后被调用，它将
///被延迟，直到底层系统已经使用了由
/ / / (EventSink)方法。
///
///当使用[EventSink]方法时，[done] [Future]可以用于
///捕获任何错误。
///
///当[close]被调用时，它将返回[done] [Future]
StreamSink 


StreamBuilder


*/
