import 'package:flutter/cupertino.dart';
import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
// import 'dart:collection';

class TelaUsuario extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _TelaUsuario();
  }
}

class _TelaUsuario extends State<TelaUsuario> {
  final CarouselController _controller = CarouselController();
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var containers = [
      Container(
        child: Center(child: Text('1')),
        // width: size.width,
        color: Colors.green,
      ),
      Container(
        child: Center(child: Text('2')),
        color: Colors.red,
      ),
      Container(
        child: Center(child: Text('3')),
        color: Colors.yellow,
      ),
      Container(
        child: Center(child: Text('4')),
        color: Colors.black,
      )
    ];

    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
        color: Colors.purple,
        height: size.height,
        width: size.width,
        child: Column(
          children: <Widget>[
            Container(
              // alignment: Alignment.center,
              height: size.height * .08,
              color: Colors.grey,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  ButtonTheme(
                    shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(30)),
                    height: size.height,
                    child: FlatButton(
                      onPressed: () {
                        _controller.animateToPage(0);
                      },
                      child: SvgPicture.asset(
                        'images/SplashScreen/fogo_Tinder.svg',
                        width: 25,
                      ),
                    ),
                  ),
                  ButtonTheme(
                    shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(30)),
                    height: size.height,
                    child: FlatButton(
                      onPressed: () {
                        _controller.animateToPage(1);
                      },
                      child: SvgPicture.asset(
                        'images/SplashScreen/fogo_Tinder.svg',
                        width: 25,
                      ),
                    ),
                  ),
                  ButtonTheme(
                    shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(30)),
                    height: size.height,
                    child: FlatButton(
                      onPressed: () {
                        _controller.animateToPage(2);
                      },
                      child: SvgPicture.asset(
                        'images/SplashScreen/fogo_Tinder.svg',
                        width: 25,
                      ),
                    ),
                  ),
                  ButtonTheme(
                    shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(30)),
                    height: size.height,
                    child: FlatButton(
                      onPressed: () {
                        _controller.animateToPage(3);
                      },
                      child: SvgPicture.asset(
                        'images/SplashScreen/fogo_Tinder.svg',
                        width: 25,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.blue,
                child: LayoutBuilder(
                  builder: (_, contraints) {
                    return SingleChildScrollView(
                      child: CarouselSlider.builder(
                        carouselController: _controller,
                        options: CarouselOptions(
                          scrollPhysics: NeverScrollableScrollPhysics(),
                          enableInfiniteScroll: false,
                          height: size.height,
                          viewportFraction: 1.0,
                        ),
                        itemCount: containers.length,
                        itemBuilder: (context, index, realIndex) {
                          return containers[index];
                        },
                      ),
                    );
                  },
                ),
              ),
            ),
            // -----------------------------------------------------------------------
            // Expanded(
            //   child: Container(
            //     child: LayoutBuilder(
            //       builder: (_, constraints) {
            //         return ListView(
            //           scrollDirection: Axis.horizontal,
            //           // physics: NeverScrollableScrollPhysics(),
            //           children: <Widget>[
            //             Container(
            //               height: size.height,
            //               width: size.width,
            //               color: Colors.red,
            //             ),
            //             Container(
            //               height: size.height,
            //               width: size.width,
            //               color: Colors.blue,
            //             ),
            //             Container(
            //               height: size.height,
            //               width: size.width,
            //               color: Colors.green,
            //             ),
            //             Container(
            //               height: size.height,
            //               width: size.width,
            //               color: Colors.yellow,
            //             ),
            //             Container(
            //               height: size.height,
            //               width: size.width,
            //               color: Colors.orange,
            //             ),
            //           ],
            //         );
            //       },
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
