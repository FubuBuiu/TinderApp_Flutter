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
    final menuBarHeight = size.height * .08;
    final iconsMenuSize = menuBarHeight * .40;
    final smallIconsMenu1 = ((size.height -
                (size.height * .08) -
                MediaQuery.of(context).padding.top) *
            .15) *
        .45;
    final bigIconsMenu1 = ((size.height -
                (size.height * .08) -
                MediaQuery.of(context).padding.top) *
            .15) *
        .65;
    final BoxDecoration decorationButtonsMenu1 = BoxDecoration(
      boxShadow: [
        BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 3,
            blurRadius: 4,
            offset: Offset(0, 4))
      ],
      color: Colors.white,
      borderRadius: BorderRadius.circular(80),
    );

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
              child: Stack(
                alignment: Alignment.center,
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
                    margin: EdgeInsets.only(
                        top: ((size.height -
                                    (size.height * .08) -
                                    MediaQuery.of(context).padding.top) -
                                ((size.height -
                                        (size.height * .08) -
                                        MediaQuery.of(context).padding.top) *
                                    .15)) *
                            .30),
                    // color: Colors.blue,
                    child: Text(
                      'Não há ninguém perto de você',
                      style: TextStyle(
                          color: Colors.grey[400],
                          fontSize: ((size.height -
                                      (size.height * .08) -
                                      MediaQuery.of(context).padding.top) -
                                  ((size.height -
                                          (size.height * .08) -
                                          MediaQuery.of(context).padding.top) *
                                      .15)) *
                              .025),
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
                        decoration: decorationButtonsMenu1,
                        alignment: Alignment.center,
                        height: smallIconsMenu1,
                        width: smallIconsMenu1,
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
                        decoration: decorationButtonsMenu1,
                        alignment: Alignment.center,
                        height: bigIconsMenu1,
                        width: bigIconsMenu1,
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
                        decoration: decorationButtonsMenu1,
                        alignment: Alignment.center,
                        height: smallIconsMenu1,
                        width: smallIconsMenu1,
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
                        decoration: decorationButtonsMenu1,
                        alignment: Alignment.center,
                        height: bigIconsMenu1,
                        width: bigIconsMenu1,
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
                        decoration: decorationButtonsMenu1,
                        alignment: Alignment.center,
                        height: smallIconsMenu1,
                        width: smallIconsMenu1,
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
              height: menuBarHeight,
              decoration: BoxDecoration(color: Colors.white, boxShadow: [
                BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 1,
                    blurRadius: 2,
                    offset: Offset(0, 0))
              ]),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    height: menuBarHeight,
                    width: menuBarHeight,
                    child: ButtonTheme(
                      shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(100)),
                      child: FlatButton(
                        onPressed: () {
                          _controller.animateToPage(0);
                        },
                        child: SvgPicture.asset(
                          'images/Tela_Usuario/Menu/menu_1.svg',
                          height: iconsMenuSize,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: size.width * .1,
                  ),
                  SizedBox(
                    height: menuBarHeight,
                    width: menuBarHeight,
                    child: ButtonTheme(
                      shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(100)),
                      height: size.height,
                      child: FlatButton(
                        onPressed: () {
                          _controller.animateToPage(1);
                        },
                        child: SvgPicture.asset(
                          'images/Tela_Usuario/Menu/menu_2.svg',
                          height: iconsMenuSize,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: size.width * .1,
                  ),
                  SizedBox(
                    height: menuBarHeight,
                    width: menuBarHeight,
                    child: ButtonTheme(
                      shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(100)),
                      height: size.height,
                      child: FlatButton(
                        onPressed: () {
                          _controller.animateToPage(2);
                        },
                        child: SvgPicture.asset(
                          'images/Tela_Usuario/Menu/menu_3.svg',
                          height: iconsMenuSize,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: size.width * .1,
                  ),
                  SizedBox(
                    height: menuBarHeight,
                    width: menuBarHeight,
                    child: ButtonTheme(
                      shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(100)),
                      height: size.height,
                      child: FlatButton(
                        onPressed: () {
                          _controller.animateToPage(3);
                        },
                        child: SvgPicture.asset(
                          'images/Tela_Usuario/Menu/menu_4.svg',
                          height: iconsMenuSize,
                        ),
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
