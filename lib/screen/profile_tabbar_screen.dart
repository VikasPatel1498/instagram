import 'package:flutter/material.dart';

class ProfileTabbarScreen extends StatefulWidget {
  @override
  _ProfileTabbarScreenState createState() => _ProfileTabbarScreenState();
}

class _ProfileTabbarScreenState extends State<ProfileTabbarScreen>
    with TickerProviderStateMixin {
  late TabController tabController;
  @override
  void initState() {
    super.initState();
    tabController = TabController(
      initialIndex: 0,
      length: 2,
      vsync: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return
        // Scaffold(
        //   body: TabBar(
        //     controller: tabController,
        //     tabs: [
        //       Tab(
        //         icon: Icon(
        //           Icons.ac_unit,
        //           color: Colors.black,
        //         ),
        //       ),
        //       Tab(
        //         icon: Icon(Icons.ac_unit),
        //       )
        //     ],
        //   ),
        // );
        Scaffold(
      appBar: AppBar(
        title: const Text('TabBar Widget'),
        bottom: TabBar(
          controller: tabController,
          tabs: const <Widget>[
            Tab(
              icon: Icon(Icons.cloud_outlined),
            ),
            Tab(
              icon: Icon(Icons.beach_access_sharp),
            ),
            Tab(
              icon: Icon(Icons.brightness_5_sharp),
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: tabController,
        children: const <Widget>[
          Center(
            child: Text("It's cloudy here"),
          ),
          Center(
            child: Text("It's rainy here"),
          ),
          Center(
            child: Text("It's sunny here"),
          ),
        ],
      ),
    );
  }
}
