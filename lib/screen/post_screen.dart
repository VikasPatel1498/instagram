// import 'package:flutter/material.dart';
// import 'package:instagram/screen/story_screen.dart';
// import 'package:instagram/story_data.dart';
// import 'package:instagram/widget/post_item.dart';

// class PostScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return SingleChildScrollView(
//       child: Column(
//         children: [
//           StoryScreen(),
//           Divider(
//             color: Colors.grey,
//           ),
//           Container(
//             height: 500,
//             child: ListView(
//               children: post_dummy_Data
//                   .map((e) => PostItem(
//                       e.title, e.subTitle, e.imgUrl, e.like, e.discription))
//                   .toList(),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:instagram/screen/story_screen.dart';
import 'package:instagram/story_data.dart';
import 'package:instagram/widget/post_item.dart';

class PostScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return
        // SingleChildScrollView(
        //   child:
        ListView(
      shrinkWrap: true,
      // scrollDirection: Axis.vertical,
      children: [
        Container(
          // height: 500,
          child: Column(
            children: [
              StoryScreen(),
              Column(
                children: post_dummy_Data
                    .map((e) => PostItem(
                        e.title, e.subTitle, e.imgUrl, e.like, e.discription))
                    .toList(),
              ),
            ],
          ),
        ),
      ],
      // ),
    );
  }
}
