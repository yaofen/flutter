import 'package:flutter/material.dart';
import 'dome/bottom_navigation_bar_demo.dart';
import 'dome/hello_dome.dart';
import 'dome/drawer_dome.dart';
import 'dome/layout_demo.dart';
import 'dome/listview_demo.dart';
import 'dome/basic_demo.dart';
import 'dome/rxdart/rxdart_demo.dart';
import 'dome/sliver_dome.dart';
import 'dome/navigator_dome.dart';
import 'dome/form_demo.dart';
import 'dome/material_components.dart';
import './dome/state/management_demo.dart';
import './dome/stream/stream_demo.dart';
import './dome/bloc/bloc_demo.dart';
import './dome/explore.dart';
import './dome/history.dart';
import './dome/list.dart';
import './dome/my.dart';
import './dome/animation/animation_demo.dart';
import './dome/http/http_demo.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => TabCtlr(),
        '/about': (context) => NavigatorDemo(),
        // '/about': (context) => Page(title: 'About'),
        '/form': (context) => FormDemo(),
        '/mdc': (context) => MaterialComponents(),
        '/state-management': (context) => StateManagementDemo(),
        '/stream': (context) => StreamDemo(),
        '/rxdart': (context) => RxDartDemo(),
        '/bloc': (context) => BlocDemo(),
        '/animation': (context) => AnimationDemo(),
        '/http': (context) => HttpDemo(),
      },
    );
  }
}

class TabCtlr extends StatefulWidget {
  const TabCtlr({Key key}) : super(key: key);

  @override
  _TabCtlrState createState() => _TabCtlrState();
}

class _TabCtlrState extends State<TabCtlr> {
  int _currentIndex = 0;

  List<Widget> _pageList = [Explore(), History(), ListTest(), My()];

  List<BottomNavigationBarItem> _barItem = [
    BottomNavigationBarItem(icon: Icon(Icons.explore), label: 'Explore'),
    BottomNavigationBarItem(icon: Icon(Icons.history), label: 'History'),
    BottomNavigationBarItem(icon: Icon(Icons.list), label: 'List'),
    BottomNavigationBarItem(icon: Icon(Icons.person), label: 'My'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pageList[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (int index) {
          setState(() {
            this._currentIndex = index;
          });
        },
        currentIndex: _currentIndex,
        items: _barItem,
        fixedColor: Colors.pink,
        selectedFontSize: 12,
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        initialIndex: 2,
        child: Scaffold(
          backgroundColor: Colors.grey[100],
          appBar: AppBar(
            title: Text('NINGHAO'),
            actions: [
              IconButton(
                  icon: Icon(Icons.search),
                  tooltip: 'Search',
                  onPressed: () {
                    debugPrint('Search button is pressed.');
                  })
            ],
            elevation: 0.0,
            bottom: TabBar(
              unselectedLabelColor: Colors.black38,
              indicatorColor: Colors.black54,
              indicatorSize: TabBarIndicatorSize.label,
              indicatorWeight: 1.0,
              tabs: [
                Tab(icon: Icon(Icons.local_florist)),
                Tab(icon: Icon(Icons.change_history)),
                Tab(icon: Icon(Icons.directions_bike)),
                Tab(icon: Icon(Icons.view_quilt)),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              ListViewDemo(),
              BasicDemo(),
              LayoutDemo(),
              SliverDemo(),
            ],
          ),
          drawer: DrawerDemo(),
          bottomNavigationBar: BottomNavigationBarDemo(),
        ));
  }
}
