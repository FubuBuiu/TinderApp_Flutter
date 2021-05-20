import 'package:flutter/cupertino.dart';
// import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

final List<Widget> containers = [
  Container(
    width: 50,
    height: 50,
    color: Colors.black,
  ),
  Container(
    width: 50,
    height: 50,
    color: Colors.blue,
  )
];

class TelaUsuario extends StatefulWidget {
  @override
  _TelaUsuario createState() => _TelaUsuario();
}

class _TelaUsuario extends State<TelaUsuario> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Fullscreen sliding carousel demo')),
      body: Builder(
        builder: (context) {
          final double height = MediaQuery.of(context).size.height;
          return CarouselSlider(
            options: CarouselOptions(
              height: height,
              viewportFraction: 1.0,
              enlargeCenterPage: false,
              // autoPlay: false,
            ),
            items: containers.map((item) => Container(child: Center()).to()),
          );
        },
      ),
    );
  }
}
