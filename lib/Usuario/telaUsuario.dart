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
    final size = MediaQuery.of(context).size;
    var containers = [
      Container(
        width: size.width,
        child: Stack(
          children: <Widget>[
            Container(
              width: size.width,
              // color: Colors.yellow,
              height: (size.height -
                      (size.height * .08) -
                      MediaQuery.of(context).padding.top) -
                  ((size.height -
                          (size.height * .08) -
                          MediaQuery.of(context).padding.top) *
                      .15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    height: ((size.height -
                                (size.height * .08) -
                                MediaQuery.of(context).padding.top) -
                            ((size.height -
                                    (size.height * .08) -
                                    MediaQuery.of(context).padding.top) *
                                .15)) *
                        .20,
                    width: ((size.height -
                                (size.height * .08) -
                                MediaQuery.of(context).padding.top) -
                            ((size.height -
                                    (size.height * .08) -
                                    MediaQuery.of(context).padding.top) *
                                .15)) *
                        .20,
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(100)),
                  ),
                  Container(
                    // color: Colors.blue,
                    child: Text(
                      'Não há ninguem perto de você',
                      style: TextStyle(color: Colors.grey),
                    ),
                  )
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                // color: Colors.grey,
                height: (size.height -
                        (size.height * .08) -
                        MediaQuery.of(context).padding.top) *
                    .15,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(80)),
                        alignment: Alignment.center,
                        height: ((size.height -
                                    (size.height * .08) -
                                    MediaQuery.of(context).padding.top) *
                                .15) *
                            .45,
                        width: ((size.height -
                                    (size.height * .08) -
                                    MediaQuery.of(context).padding.top) *
                                .15) *
                            .45,
                        child: SvgPicture.asset(
                          'images/Tela_Usuario/retorno.svg',
                          height: (((size.height -
                                          (size.height * .08) -
                                          MediaQuery.of(context).padding.top) *
                                      .15) *
                                  .45) *
                              .60,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: size.width * .03,
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(80)),
                        alignment: Alignment.center,
                        height: ((size.height -
                                    (size.height * .08) -
                                    MediaQuery.of(context).padding.top) *
                                .15) *
                            .65,
                        width: ((size.height -
                                    (size.height * .08) -
                                    MediaQuery.of(context).padding.top) *
                                .15) *
                            .65,
                        child: SvgPicture.asset(
                          'images/Tela_Usuario/dislike.svg',
                          height: (((size.height -
                                          (size.height * .08) -
                                          MediaQuery.of(context).padding.top) *
                                      .15) *
                                  .65) *
                              .45,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: size.width * .03,
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(80)),
                        alignment: Alignment.center,
                        height: ((size.height -
                                    (size.height * .08) -
                                    MediaQuery.of(context).padding.top) *
                                .15) *
                            .45,
                        width: ((size.height -
                                    (size.height * .08) -
                                    MediaQuery.of(context).padding.top) *
                                .15) *
                            .45,
                        child: SvgPicture.asset(
                          'images/Tela_Usuario/superLike.svg',
                          height: (((size.height -
                                          (size.height * .08) -
                                          MediaQuery.of(context).padding.top) *
                                      .15) *
                                  .45) *
                              .60,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: size.width * .03,
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(80)),
                        alignment: Alignment.center,
                        height: ((size.height -
                                    (size.height * .08) -
                                    MediaQuery.of(context).padding.top) *
                                .15) *
                            .65,
                        width: ((size.height -
                                    (size.height * .08) -
                                    MediaQuery.of(context).padding.top) *
                                .15) *
                            .65,
                        child: SvgPicture.asset(
                          'images/Tela_Usuario/like.svg',
                          height: (((size.height -
                                          (size.height * .08) -
                                          MediaQuery.of(context).padding.top) *
                                      .15) *
                                  .65) *
                              .45,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: size.width * .03,
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(80)),
                        alignment: Alignment.center,
                        height: ((size.height -
                                    (size.height * .08) -
                                    MediaQuery.of(context).padding.top) *
                                .15) *
                            .45,
                        width: ((size.height -
                                    (size.height * .08) -
                                    MediaQuery.of(context).padding.top) *
                                .15) *
                            .45,
                        child: SvgPicture.asset(
                          'images/Tela_Usuario/combo.svg',
                          height: (((size.height -
                                          (size.height * .08) -
                                          MediaQuery.of(context).padding.top) *
                                      .15) *
                                  .45) *
                              .60,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
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
        color: Colors.grey[200],
        height: size.height,
        width: size.width,
        child: Column(
          children: <Widget>[
            Container(
              height: size.height * .08,
              color: Colors.white,
              child: Row(
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
            Container(
              height: size.height -
                  (size.height * .08) -
                  MediaQuery.of(context).padding.top,
              // color: Colors.blue,
              child: LayoutBuilder(
                builder: (_, contraints) {
                  return SingleChildScrollView(
                    child: CarouselSlider.builder(
                      carouselController: _controller,
                      options: CarouselOptions(
                        scrollPhysics: NeverScrollableScrollPhysics(),
                        enableInfiniteScroll: false,
                        height: size.height -
                            (size.height * .08) -
                            MediaQuery.of(context).padding.top,
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
          ],
        ),
      ),
    );
  }
}
