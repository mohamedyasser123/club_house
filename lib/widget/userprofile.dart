import 'package:clubhouse_ui/data.dart';
import 'package:flutter/material.dart';

class userprofile extends StatelessWidget {
  final double size;
  final String imgurl;

  const userprofile({super.key, required this.size, required this.imgurl});


  @override
  Widget build(BuildContext context) {
    return ClipRRect(
     // borderRadius: BorderRadius.circular(size/10s - size/2s),
      child: Image.network(
        imgurl,
        width: size,
        height: size,
        fit: BoxFit.cover,
      ),
    );
  }
}