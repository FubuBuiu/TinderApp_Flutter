import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:tinder_app/Usuario/Menu4/carouselSlide_AdTinderPlus.dart';

class Menu4 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Menu4();
  }
}

class _Menu4 extends State<Menu4> {
  final CarouselController _controller = CarouselController();
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

    return Column(
      children: [
        ClipPath(
          clipper: OvalBottomBorderClipper(),
          child: Container(
            height: carouselArea * .7,
            width: size.width,
            color: Colors.white,
          ),
        ),
        Expanded(
          child: Container(
            // color: Colors.amberAccent,
            height: carouselArea * .3,
            width: size.width,
            child: CarouselSlideAdTinderPlus(),
          ),
        ),
      ],
    );
  }
}
