import 'package:flutter/material.dart';

class BottomBar extends StatefulWidget {
  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _pageIndex = 0;
  PageController? pageController;

  List<Widget> tabPages = [
    // Screen1(),
    // Screen2(),
    // Screen3(),
  ];

  @override
  void initState() {
    super.initState();
    pageController = PageController(initialPage: _pageIndex);
  }

  @override
  void dispose() {
    pageController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: BottomNavigationBar(
        currentIndex: PageController as int,
        // onTap: onTabTapped,
        iconSize: 27,
        // selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_filled,
              color: Colors.black,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search_outlined,
              color: Colors.black,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.ondemand_video_rounded,
              color: Colors.black,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.favorite_border,
              color: Colors.black,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: CircleAvatar(
              backgroundColor: Colors.white,
              radius: 14.0,
              backgroundImage: AssetImage("assets/images/first.png"),

              // Icon(
              //   Icons.photo,
              //   color: Colors.black,
              // ),
            ),
            label: '',
          ),
        ],
      ),
    );
  }
}
