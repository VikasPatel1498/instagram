import 'package:flutter/material.dart';
import 'package:instagram/screen/message_screen.dart';
import 'package:instagram/screen/post_screen.dart';
import 'package:instagram/screen/story_screen.dart';

class MainBody extends StatefulWidget {
  static const routeName = "/main-body";
  // void buildcolumn() {}
  @override
  State<MainBody> createState() => _MainBodyState();
}

class _MainBodyState extends State<MainBody> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Image(
          image: AssetImage("assets/images/Instagram_logo1.png"),
          height: 45,
        ),
        backgroundColor: Colors.white,
        actions: [
          PopupMenuButton(
            child: Icon(
              Icons.add_box_outlined,
              color: Colors.black,
              size: 30,
            ),
            itemBuilder: (_) => [
              PopupMenuItem(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Post"),
                    Icon(
                      Icons.view_comfortable_outlined,
                      color: Colors.black,
                    ),
                    // Divider(
                    //   color: Colors.black,
                    // )
                  ],
                ),
              ),
              PopupMenuItem(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Story"),
                    SizedBox(
                      width: 15,
                    ),
                    Icon(
                      Icons.data_saver_on_rounded,
                      color: Colors.black,
                    ),
                  ],
                ),
              ),
              PopupMenuItem(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text("Reel"),
                    Icon(
                      Icons.ondemand_video_rounded,
                      color: Colors.black,
                    ),
                  ],
                ),
              ),
              PopupMenuItem(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text("Live"),
                    Icon(
                      Icons.sensors_outlined,
                      color: Colors.black,
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(
            width: 17,
          ),
          // IconButton(
          //   onPressed: () {},
          //   icon: Icon(
          //     Icons.message_rounded,
          //     color: Colors.black,
          //   ),
          // ),

          Stack(
            alignment: Alignment.center,
            children: [
              // Icon(
              //   Icons.message_rounded,
              //   color: Colors.black,
              //   size: 30,
              // ),
              IconButton(
                onPressed: () {
                  // Navigator.of(context)
                  //     .pushReplacementNamed(MessageScreen.routeName);

                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MessageScreen()),
                  );
                },
                icon:
                    Icon(Icons.message_rounded, color: Colors.black, size: 30),
              ),
              Positioned(
                right: 0,
                top: 10,
                child: Container(
                  // padding: EdgeInsets.all(20.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.red),
                  constraints: BoxConstraints(
                    minWidth: 15,
                    minHeight: 15,
                  ),
                  child: Center(
                    child: Text(
                      "3",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 10,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            width: 15,
          ),
        ],
      ),
      body: PostScreen(),
      // SingleChildScrollView(
      //   child: Column(
      //     children: [

      //       PostScreen(),
      //     ],
      //   ),
      // ),
    );
  }
}
