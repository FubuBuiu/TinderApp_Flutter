import 'package:flutter/cupertino.dart';
// import 'package:carousel_slider/carousel_controller.dart';
// import 'package:carousel_slider/carousel_options.dart';
// import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
// import 'dart:collection';

class TelaUsuario extends StatefulWidget {
  @override
  _TelaUsuario createState() => _TelaUsuario();
}

class _TelaUsuario extends State<TelaUsuario> {
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;

    return Column(children: <Widget>[
      Flexible(
        fit: FlexFit.tight,
        flex: 2,
        child: Container(
          color: Colors.blue,
          child: Row(
            children: <Widget>[
              Flexible(
                flex: 1,
                child: ButtonTheme(
                  // height: 60,
                  // minWidth: 60,
                  child: FlatButton(
                    child: SvgPicture.asset(
                      'images/SplashScreen/fogo_Tinder.svg',
                      height: 20,
                    ),
                    onPressed: () {},
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      Flexible(
        flex: 14,
        child: ListView(
          scrollDirection: Axis.horizontal,
          // physics: NeverScrollableScrollPhysics(),
          children: <Widget>[
            Container(
              height: height,
              width: width,
              color: Colors.red,
            ),
            Container(
              height: height,
              width: width,
              color: Colors.blue,
            ),
            Container(
              height: height,
              width: width,
              color: Colors.green,
            ),
            Container(
              height: height,
              width: width,
              color: Colors.yellow,
            ),
            Container(
              height: height,
              width: width,
              color: Colors.orange,
            ),
          ],
        ),
      ),
    ]);
  }
}
