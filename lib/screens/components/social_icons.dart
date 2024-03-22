import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SocialIcon extends StatelessWidget {
  final String iconSrc;
  final VoidCallback press;
  const SocialIcon({
    required this.iconSrc,
    required this.press,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: press,
        child: Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
                border: Border.all(width: 1, color: Colors.black),
                shape: BoxShape.circle),
            child: Image.network(
              iconSrc,
              height: 20,
              width: 20,
            )));
  }
}
