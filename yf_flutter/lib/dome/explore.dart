import 'package:flutter/material.dart';
import './drawer_dome.dart';
import './layout_demo.dart';
import './listview_demo.dart';
import './basic_demo.dart';
import './sliver_dome.dart';

class Explore extends StatelessWidget {
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
          // bottomNavigationBar: BottomNavigationBarDemo(),
        ));
  }
}
