import 'package:flutter/cupertino.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tinder_app/Usuario/Menu1/menu1.dart';
import 'package:tinder_app/Usuario/Menu2/menu2.dart';
import 'package:tinder_app/Usuario/Menu3/menu3.dart';
import 'package:tinder_app/Usuario/Menu4/menu4.dart';

class TelaUsuario extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _TelaUsuario();
  }
}

class _TelaUsuario extends State<TelaUsuario> {
  final CarouselController _controller = CarouselController();
  int page = 0;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final menuBarHeight = size.height * .07;
    final iconsMenuSize = menuBarHeight * .40;
    final paddingBarNotification = MediaQuery.of(context).padding.top;
    final carouselArea = size.height - menuBarHeight - paddingBarNotification;
    // final heightAreaButtonsMenu1 = carouselArea * .15;

    List containers = [
      Menu1(),
      Menu2(),
      Menu3(),
      Menu4(),
    ];

    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: Container(
        padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
        // color: Colors.grey[200],
        height: size.height,
        width: size.width,
        child: Column(
          children: <Widget>[
            Container(
              // height: carouselArea,
              // color: Colors.blue,
              child: LayoutBuilder(
                builder: (_, contraints) {
                  return SingleChildScrollView(
                    child: CarouselSlider.builder(
                      carouselController: _controller,
                      options: CarouselOptions(
                        scrollPhysics: NeverScrollableScrollPhysics(),
                        enableInfiniteScroll: false,
                        height: carouselArea,
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
                          setState(() {
                            page = 0;
                          });
                          _controller.animateToPage(page,
                              duration: Duration(milliseconds: 100));
                        },
                        child: SvgPicture.asset('assets/svg/fire.svg',
                            height: iconsMenuSize,
                            color: page == 0 ? null : Colors.grey),
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
                          setState(() {
                            page = 1;
                          });
                          _controller.animateToPage(page,
                              duration: Duration(milliseconds: 100));
                        },
                        child: SvgPicture.asset(
                          'assets/svg/menu_2.svg',
                          height: iconsMenuSize,
                          color: page == 1 ? null : Colors.grey,
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
                          setState(() {
                            page = 2;
                          });
                          _controller.animateToPage(page,
                              duration: Duration(milliseconds: 100));
                        },
                        child: SvgPicture.asset('assets/svg/menu_3.svg',
                            height: iconsMenuSize,
                            color: page == 2 ? null : Colors.grey),
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
                          setState(() {
                            page = 3;
                          });
                          _controller.animateToPage(page,
                              duration: Duration(milliseconds: 100));
                        },
                        child: SvgPicture.asset('assets/svg/menu_4.svg',
                            height: iconsMenuSize,
                            color: page == 3 ? null : Colors.grey),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
