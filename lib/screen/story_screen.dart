import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:instagram/story_data.dart';
import 'package:instagram/widget/story_item.dart';

class StoryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // final routeData = ModalRoute.of(context)!.settings.arguments as String;

    return Container(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(9.0),
                  child: CircleAvatar(
                    backgroundColor: Colors.red,
                    radius: 35,
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 33,
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 29.0,
                        backgroundImage: AssetImage("assets/images/first.png"),
                      ),
                    ),
                  ),
                ),
                Center(child: Text("Your Story")),
              ],
            ),
            // Row(
            //   children: dummy_Data
            //       .map(
            //         (e) => StoryItem(e.title, e.imgUrl),
            //       )
            //       .toList(),

            //   // ListView.separated(itemBuilder: (context,index)=>StoryItem(title, imgUrl), separatorBuilder: (BuildContext context, int index), itemCount:(_,i)=>StoryItem(title, imgUrl) ),
            // ),
            Row(
              // scrollDirection: Axis.horizontal,
              children: dummy_Data
                  .map(
                    (e) => StoryItem(e.title, e.imgUrl),
                  )
                  .toList(),
            )
          ],
        ),
      ),
    );
  }
}
