import 'package:flutter/material.dart';

class StoryItem extends StatelessWidget {
  final String title;
  final String imgUrl;
  StoryItem(this.title, this.imgUrl);
  @override
  Widget build(BuildContext context) {
    return Container(
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
                      backgroundImage: AssetImage(imgUrl),
                    ),
                  ),
                ),
              ),
              Center(child: Text(title)),
            ],
          ),
        ],
      ),
    );
  }
}
