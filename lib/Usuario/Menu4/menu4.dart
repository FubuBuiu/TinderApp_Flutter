import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

class Menu4 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Menu4();
  }
}

class _Menu4 extends State<Menu4> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final menuBarHeight = size.height * .07;
    final paddingBarNotification = MediaQuery.of(context).padding.top;
    final carouselArea = size.height - menuBarHeight - paddingBarNotification;

    return Stack(
      children: [
        Align(
          alignment: Alignment.topCenter,
          child: ClipPath(
            clipper: OvalBottomBorderClipper(),
            child: Container(
              height: carouselArea * .78,
              width: size.width,
              color: Colors.white,
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            color: Colors.amberAccent,
            height: carouselArea * .22,
            width: size.width,
          ),
        )
      ],
    );
  }
}
