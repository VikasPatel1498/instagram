import 'package:flutter/material.dart';

class SearchItem extends StatelessWidget {
  final String imgUrl;
  SearchItem(this.imgUrl);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image(
        image: AssetImage(
          imgUrl,
        ),
        fit: BoxFit.fill,
      ),
    );
  }
}
