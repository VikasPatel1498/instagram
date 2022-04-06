import 'package:flutter/material.dart';
import 'package:instagram/story_data.dart';
import 'package:instagram/widget/search_item.dart';
// import 'package:instagram/story_data.dart';
// import 'package:instagram/widget/search_item.dart';
// import 'package:instagram/widget/story_item.dart';

// class SearchScreen extends StatelessWidget {
//   const SearchScreen({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       // appBar: AppBar(),
//       body: Container(
//         child: Column(
//           children: [
//             Row(
//               children: [
//                 Center(
//                   child: Padding(
//                     padding: const EdgeInsets.all(20.0),
//                     child: Container(
//                       height: 30,
//                       width: 320,
//                       decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(8),
//                           color: Colors.grey[300]),
//                       child: Row(
//                         children: [
//                           SizedBox(
//                             width: 11,
//                           ),
//                           Icon(Icons.search),
//                           SizedBox(
//                             width: 11,
//                           ),
//                           Text(
//                             "Search",
//                             style: TextStyle(color: Colors.grey),
//                           ),
//                           // Container(
//                           //   height: 30,
//                           //   decoration: BoxDecoration(
//                           //       borderRadius: BorderRadius.circular(8),
//                           //       color: Colors.grey[500]),
//                           //   child: ListTile(
//                           //     leading: Icon(Icons.search),
//                           //     title: TextField(
//                           //       decoration: InputDecoration(hintText: "Seach"),
//                           //     ),
//                           //   ),
//                           // )
//                         ],
//                       ),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//             Container(
//               child: GridView(
//                 children: [Text("data")],
//                 gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
//                     maxCrossAxisExtent: 10),
//               ),
//             )
//           ],
//           // Container(
//           //     child: GridView(
//           //       children: dummy_Data
//           //           .map(
//           //             (e) => SearchItem(e.imgUrl),
//           //           )
//           //           .toList(),r
//           //       gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
//           //           maxCrossAxisExtent: 200,
//           //           childAspectRatio: 3 / 2,
//           //           crossAxisSpacing: 5,
//           //           mainAxisSpacing: 5),
//           //     ),
//           //   ),
//         ),
//       ),
//     );
//   }
// }

class SearchScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
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
          Row(
            children: [
              Expanded(
                child: GridView(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  // padding: EdgeInsets.only(top: 7),
                  children: dummy_Data
                      .map(
                        (e) => SearchItem(e.imgUrl),
                      )
                      .toList(),
                  gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 150,
                      childAspectRatio: 3 / 2,
                      crossAxisSpacing: 2,
                      mainAxisSpacing: 2),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
