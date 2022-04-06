import 'package:flutter/material.dart';
import 'package:instagram/screen/story_screen.dart';

class PostItem extends StatelessWidget {
  final String title;
  final String sbuTitle;
  final String imgUrl;
  final String like;
  final String discription;
  PostItem(
    this.title,
    this.sbuTitle,
    this.imgUrl,
    this.like,
    this.discription,
  );

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          // height: 500,
          width: double.infinity,
          child: Column(
            children: [
              ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 20.0,
                  backgroundImage: AssetImage(imgUrl),
                ),
                title: Text(title),
                subtitle: Text(sbuTitle),
                trailing: Icon(
                  Icons.more_vert_sharp,
                  color: Colors.black,
                ),
              ),
              Stack(
                children: [
                  Positioned(
                    // height: 500,
                    // width: double.infinity,
                    child: Image(
                      image: AssetImage(imgUrl),
                      fit: BoxFit.fill,
                      height: 270,
                      width: double.infinity,
                    ),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.only(top: 7),
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.end,
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    SizedBox(
                      width: 7,
                    ),
                    Icon(Icons.favorite_border),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(Icons.chat_bubble_outline_rounded),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(Icons.send_rounded),
                    Spacer(),
                    Icon(Icons.bookmark_border_sharp),
                    SizedBox(
                      width: 5,
                    ),
                  ],
                  // ListTile(
                  //   leading: Icon(Icons.favorite_border),
                  //   title: Icon(Icons.chat_bubble_outline_rounded),
                  //   trailing: Icon(
                  //     Icons.send_rounded,
                  //     color: Colors.black,
                  //   ),
                  // )
                  // ],
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(7.0),
                    child: Text("${like + " likes"}"),
                  ),
                ],
              ),
              Row(
                children: [
                  SizedBox(
                    width: 7,
                  ),
                  Container(
                    width: 350,
                    child: Text(
                      discription,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  // Expanded(
                  //   child: Text(
                  //     "Gujarat News: TOI brings the latest Gujarat news headlines about Gujarat crime, Gujarat politics and Live Updates on Gujarat from Times of India.",
                  //     overflow: TextOverflow.clip,
                  //   ),
                  // ),
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}
