import 'package:flutter/material.dart';
import 'package:instagram/screen/profile_tabbar_screen.dart';
import 'package:instagram/story_data.dart';
import 'package:instagram/widget/search_item.dart';

class ProfileScreen extends StatefulWidget {
  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen>
    with TickerProviderStateMixin {
  late TabController tabController;
  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 2, vsync: this);
  }

  void addNewAccount(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (_) {
        return GestureDetector(
          child: Container(
            height: 700,
            child: Padding(
              padding: const EdgeInsets.only(top: 15),
              child: ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.black,
                  radius: 21,
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Icon(Icons.add),
                  ),
                ),
                title: Text('Add account'),
              ),
            ),
          ),
        );
      },
    );
  }

  void addNewPost(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (_) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                  child: Text(
                "Create",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              )),
            ),
            Padding(
              padding: const EdgeInsets.all(1.0),
              child: Divider(
                color: Colors.grey,
              ),
            ),
            ListTile(
              leading: IconButton(
                icon: Icon(Icons.view_comfortable_outlined),
                onPressed: () {},
              ),
              title: Text("Post"),
            ),
            ListTile(
              leading: IconButton(
                icon: Icon(Icons.ondemand_video_outlined),
                onPressed: () {},
              ),
              title: Text("Reel"),
            ),
            ListTile(
              leading: IconButton(
                icon: Icon(Icons.data_saver_on_rounded),
                onPressed: () {},
              ),
              title: Text("Story"),
            ),
            ListTile(
              leading: IconButton(
                icon: Icon(Icons.sensors_outlined),
                onPressed: () {},
              ),
              title: Text("Live"),
            ),
          ],
        );
      },
    );
  }

  void addNewMenu(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (_) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ListTile(
              leading: IconButton(
                icon: Icon(Icons.settings_outlined),
                onPressed: () {},
              ),
              title: Text("Setting"),
            ),
            ListTile(
              leading: IconButton(
                icon: Icon(Icons.archive),
                onPressed: () {},
              ),
              title: Text("Archive"),
            ),
            ListTile(
              leading: IconButton(
                icon: Icon(Icons.av_timer_outlined),
                onPressed: () {},
              ),
              title: Text("Your Activity"),
            ),
            ListTile(
              leading: IconButton(
                icon: Icon(Icons.qr_code_scanner),
                onPressed: () {},
              ),
              title: Text("QR Code"),
            ),
            ListTile(
              leading: IconButton(
                icon: Icon(Icons.bookmark_border),
                onPressed: () {},
              ),
              title: Text("Saved"),
            ),
            ListTile(
              leading: IconButton(
                icon: Icon(Icons.format_list_bulleted_rounded),
                onPressed: () {},
              ),
              title: Text("Close Friend"),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: FlatButton(
          onPressed: () => addNewAccount(context),
          child: Text(
            "Vikas",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
          ),
        ),
        actions: [
          // SizedBox(
          //   width: 17,
          // ),
          IconButton(
            onPressed: () => addNewPost(context),
            icon: Icon(
              Icons.add_box_outlined,
              color: Colors.black,
              size: 27,
            ),
          ),
          IconButton(
            onPressed: () => addNewMenu(context),
            icon: Icon(
              Icons.menu_rounded,
              color: Colors.black,
              size: 27,
            ),
          ),
          SizedBox(
            width: 10,
          ),
        ],
      ),
      body: SingleChildScrollView(
        // child: Container(
        //   width: double.infinity,
        //   height: 700,
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    top: 5,
                    bottom: 10,
                    // right: 10,
                    left: 3,
                  ),
                  child: CircleAvatar(
                    radius: 40,
                    backgroundImage: AssetImage(
                      "assets/images/images(2).jpeg",
                    ),
                  ),
                ),
                Spacer(),
                FlatButton(
                  onPressed: () {},
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            "153",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text("Posts"),
                        ],
                      ),
                    ],
                  ),
                ),
                Spacer(),
                FlatButton(
                  onPressed: () {},
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            "1128",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text("Followers"),
                        ],
                      ),
                    ],
                  ),
                ),
                Spacer(),
                FlatButton(
                  onPressed: () {},
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        children: [
                          Text(
                            "1123",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text("Following"),
                        ],
                      ),
                    ],
                  ),
                ),
                Spacer(),
              ],
            ),
            Row(
              // mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Vikas",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text("->first"),
                      Text("->second"),
                      Text("->third")
                    ],
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: 10,
                  height: 50,
                ),
                Expanded(
                  child: OutlineButton(
                    // padding: EdgeInsets.only(left: 100, right: 100),
                    onPressed: () {},
                    child: Text("Edit Profile"),
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                OutlineButton(
                  onPressed: () {},
                  child: Icon(
                    Icons.expand_more,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
              ],
            ),
            // SingleChildScrollView(
            //   scrollDirection: Axis.horizontal,
            //   child:
            Row(
              children: [
                Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(9.0),
                      child: CircleAvatar(
                        backgroundColor: Colors.grey,
                        radius: 34,
                        child: CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 33,
                          child: CircleAvatar(
                            backgroundColor: Colors.white,
                            radius: 29.0,
                            backgroundImage:
                                AssetImage("assets/images/images.jpeg"),
                          ),
                        ),
                      ),
                    ),
                    Center(child: Text("favorites")),
                  ],
                ),
                Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(9.0),
                      child: CircleAvatar(
                        backgroundColor: Colors.black,
                        radius: 30,
                        child: CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 29.0,
                          child: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.add,
                                color: Colors.black,
                              )),
                        ),
                      ),
                    ),
                    Center(
                      child: Text("new"),
                    ),
                  ],
                ),
              ],
            ),
            // ),
            Container(
              // decoration:
              //     BoxDecoration(color: Theme.of(context).primaryColor),
              child: TabBar(
                controller: tabController,
                tabs: [
                  Tab(
                    icon: Icon(
                      Icons.view_comfortable_outlined,
                      color: Colors.black,
                    ),
                  ),
                  Tab(
                    icon: Icon(
                      Icons.person_pin_rounded,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 250,
              child: TabBarView(
                controller: tabController,
                children: <Widget>[
                  GridView(
                    scrollDirection: Axis.vertical,
                    children: dummy_Data
                        .map(
                          (e) => SearchItem(e.imgUrl),
                        )
                        .toList(),
                    gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                        maxCrossAxisExtent: 120,
                        childAspectRatio: 3 / 2,
                        crossAxisSpacing: 2,
                        mainAxisSpacing: 2),
                  ),
                  GridView(
                    scrollDirection: Axis.vertical,
                    children: dummy_Data
                        .map(
                          (e) => SearchItem(e.imgUrl),
                        )
                        .toList(),
                    gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                        maxCrossAxisExtent: 120,
                        childAspectRatio: 3 / 2,
                        crossAxisSpacing: 2,
                        mainAxisSpacing: 2),
                  ),
                ],
              ),
            ),
          ],
        ),
        // ),
      ),
    );
  }
}
