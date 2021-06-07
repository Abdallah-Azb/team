import 'package:flutter/material.dart';

class AppBackground extends StatelessWidget {
  final Widget child;
  final int index;

  bool backgroundIsDirection;

  AppBackground(
      {this.child, this.backgroundIsDirection = true, this.index = 1});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(imageBackground(context, index)), fit: BoxFit.fill,
          // colorFilter:   ColorFilter.mode(Colors.white.withOpacity(0.2), BlendMode.dstOver)
        ),
      ),
      child: child,
    );
  }

  String imageBackground(BuildContext context, int index) {
    return index == 2 ? ALLImage.backgroundImage2 : ALLImage.backgroundImage1;
  }
}

class ALLImage {
  static final backgroundImage1 = "assaet/images/background_left.jpeg";
  static final backgroundImage2 = "assaet/images/background_non.jpeg";
  static final backgroundImage3 = "assaet/images/background_right.jpeg";
  static final backgroundImage4 = "assaet/images/backgroundstore.jpg";
}
