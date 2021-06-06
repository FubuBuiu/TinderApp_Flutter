import 'package:flutter/material.dart';

class LikedYouCards extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final menuBarHeight = size.height * .07;
    final paddingBarNotification = MediaQuery.of(context).padding.top;
    final carouselArea = size.height - menuBarHeight - paddingBarNotification;
    final buttonsBarHeight = carouselArea * .07;
    return Container(
      decoration: BoxDecoration(
          color: Colors.red, borderRadius: BorderRadius.circular(10)),
      width: size.width * .46,
      height: (carouselArea - buttonsBarHeight) * .38,
    );
  }
}
