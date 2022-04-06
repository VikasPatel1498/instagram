import 'package:flutter/material.dart';
import 'package:instagram/screen/bottom_bar_screen.dart';
import 'package:instagram/screen/main_body_screen.dart';
import 'package:instagram/screen/message_screen.dart';
import 'package:instagram/screen/profile_screen.dart';
import 'package:instagram/screen/search_screen.dart';

void main() {
  runApp(HomePage());
}

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _pageIndex = 0;
  PageController? _pageController;

  List<Widget> tabPages = [
    MainBody(),
    SearchScreen(),
    SearchScreen(),
    SearchScreen(),
    ProfileScreen(),
  ];

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: _pageIndex);
  }

  @override
  void dispose() {
    _pageController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body:
            // MainBody(),
            PageView(
          children: tabPages,
          onPageChanged: onPageChanged,
          controller: _pageController,
        ),
        bottomNavigationBar:

            // currentIndex: _pageIndex,

            // ),
            BottomNavigationBar(
          currentIndex: _pageIndex,
          onTap: onTabTapped,
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
        // body:
      ),
      routes: {
        MessageScreen.routeName: (ctx) => MessageScreen(),
        MainBody.routeName: (ctx) => MainBody(),
      },
    );
  }

  void onPageChanged(int page) {
    setState(() {
      this._pageIndex = page;
    });
  }

  void onTabTapped(int index) {
    this._pageController!.animateToPage(index,
        duration: const Duration(milliseconds: 500), curve: Curves.easeInOut);
  }
}
