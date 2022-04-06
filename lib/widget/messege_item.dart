import 'package:flutter/material.dart';

class MessageItems extends StatelessWidget {
  final String title;
  final String sbuTitle;
  final String imgUrl;

  MessageItems(
    this.title,
    this.sbuTitle,
    this.imgUrl,
  );
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: () {},
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: Colors.white,
          radius: 22.0,
          backgroundImage: AssetImage(imgUrl),
        ),
        title: Text(title),
        subtitle: Text(sbuTitle),
        trailing: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.camera_alt_outlined,
            color: Colors.grey,
          ),
        ),
      ),
    );
  }
}
