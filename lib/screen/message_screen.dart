import 'package:flutter/material.dart';
import 'package:instagram/screen/main_body_screen.dart';
import 'package:instagram/story_data.dart';
import 'package:instagram/widget/messege_item.dart';
import 'package:instagram/widget/search_item.dart';

class MessageScreen extends StatefulWidget {
  static const routeName = "/message-screens";

  @override
  State<MessageScreen> createState() => _MessageScreenState();
}

class _MessageScreenState extends State<MessageScreen>
    with TickerProviderStateMixin {
  late TabController tabController;
  @override
  void initState() {
    super.initState();
    tabController = TabController(
      initialIndex: 0,
      length: 3,
      vsync: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        backgroundColor: Colors.white,
        title: FlatButton(
          onPressed: () {},
          child: Text(
            "vikas1498",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
          ),
          //   ),
          // ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.videocam_outlined,
              color: Colors.black,
              size: 37,
            ),
          ),
          SizedBox(
            width: 15,
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.edit,
              color: Colors.black,
              size: 30,
            ),
          ),
          SizedBox(
            width: 13,
          ),
        ],
        bottom: TabBar(
          labelColor: Colors.black,
          labelStyle: TextStyle(fontWeight: FontWeight.bold),
          unselectedLabelStyle: TextStyle(),
          unselectedLabelColor: Colors.grey,
          controller: tabController,
          tabs: <Widget>[
            Tab(
              child: Text(
                "Chats",
                style: TextStyle(
                    // fontSize: 15,
                    // color: Colors.black,
                    // fontWeight: FontWeight.bold
                    ),
              ),
            ),
            Tab(
              child: Text(
                "Calls",
                // style: TextStyle(
                //   // fontSize: 15,
                //   color: Colors.grey,
                //   // fontWeight: FontWeight.bold
                // ),
              ),
            ),
            Tab(
              child: Text(
                "Requests",
                // style: TextStyle(
                //   // fontSize: 16,
                //   color: Colors.grey,
                //   // fontWeight: FontWeight.bold
                // ),
              ),
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: tabController,
        children: [
          // SingleChildScrollView(
          //   child: Container(
          //     child:
          ListView(
            shrinkWrap: true,
            children: [
              Column(
                children: [
                  Container(
                    width: double.infinity,
                    // padding: EdgeInsets.all(10),
                    margin: EdgeInsets.all(20),
                    height: 30,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.grey[200]),

                    child: TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.search, color: Colors.black),
                        hintText: "Search",
                        // labelStyle: TextStyle(fontWeight: FontWeight.bold),
                        border: OutlineInputBorder(
                            // borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide.none),
                        contentPadding: EdgeInsets.all(1),
                      ),
                    ),
                  ),
                  Column(
                    // scrollDirection: Axis.vertical,
                    // shrinkWrap: true,
                    // padding: EdgeInsets.only(top: 7),
                    children: post_dummy_Data
                        .map(
                          (e) => MessageItems(e.title, e.subTitle, e.imgUrl),
                        )
                        .toList(),
                  ),
                ],
                //   ),
                // ),
              ),
            ],
          ),
          Center(
            child: Text(
              "No call here",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
            ),
          ),
          Center(
            child: Text(
              "No message requests",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
            ),
          ),
        ],
      ),
    );
  }
}
