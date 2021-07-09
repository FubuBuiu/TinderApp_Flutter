import 'package:flutter/cupertino.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tinder_app/Usuario/Menu1/matchCard.dart';
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
  GlobalKey myKey = GlobalKey();
  List<Widget> matchCardList = [];
  List<Color> matchCardColorList = [Colors.red, Colors.green, Colors.blue];

  void _removeCard(index) {
    setState(() {
      matchCardList.remove(index);
    });
  }

  @override
  void initState() {
    super.initState();
    for (int x = 0; x < 3; x++) {
      matchCardList.add(
        MatchCard(
          _removeCard,
          index: x,
          color: matchCardColorList[x],
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final menuBarHeight = size.height * .07;
    final iconsMenuSize = menuBarHeight * .40;
    final paddingBarNotification = MediaQuery.of(context).padding.top;
    final carouselArea = size.height - menuBarHeight - paddingBarNotification;
    // final heightAreaButtonsMenu1 = carouselArea * .15;
    final smallButtonMenu1 = carouselArea * .06;
    final bigButtonMenu1 = carouselArea * .08;
    final smallIconButtonMenu1 = smallButtonMenu1 * .45;
    final bigIconButtonMenu1 = bigButtonMenu1 * .45;

    List containers = [
      Container(
        width: size.width,
        child: Stack(
          children: <Widget>[
            Container(
              // alignment: Alignment.topCenter,
              width: size.width,
              // color: Colors.yellow,
              height: carouselArea,
              child: Stack(
                alignment: Alignment.center,
                children: <Widget>[
                  Container(
                    height: carouselArea * .16,
                    width: carouselArea * .16,
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(100)),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: carouselArea * .28),
                    // color: Colors.blue,
                    child: Text(
                      'Não há ninguém perto de você',
                      style: TextStyle(
                          color: Colors.grey[400],
                          fontSize: carouselArea * .019),
                    ),
                  ),
                  // Stack(children: matchCardList),
                ],
              ),
            ),
            Align(
                alignment: Alignment.center,
                child: Stack(key: myKey, children: matchCardList)),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                margin: EdgeInsets.only(bottom: carouselArea * .03),
                // color: Colors.grey,
                // height: heightAreaButtonsMenu1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      highlightColor: Colors.transparent,
                      splashColor: Colors.transparent,
                      onTap: () {},
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            border:
                                Border.all(color: Color(0xFFFFB600), width: 2)),
                        alignment: Alignment.center,
                        height: smallButtonMenu1,
                        width: smallButtonMenu1,
                        child: SvgPicture.asset(
                          'assets/svg/retorno.svg',
                          height: smallIconButtonMenu1,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: size.width * .03,
                    ),
                    InkWell(
                      highlightColor: Colors.transparent,
                      splashColor: Colors.transparent,
                      onTap: () {},
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            border:
                                Border.all(color: Color(0xFFFE496A), width: 2)),
                        alignment: Alignment.center,
                        height: bigButtonMenu1,
                        width: bigButtonMenu1,
                        child: SvgPicture.asset(
                          'assets/svg/dislike.svg',
                          height: bigIconButtonMenu1,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: size.width * .03,
                    ),
                    InkWell(
                      highlightColor: Colors.transparent,
                      splashColor: Colors.transparent,
                      onTap: () {},
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            border:
                                Border.all(color: Color(0xFF00B9E8), width: 2)),
                        alignment: Alignment.center,
                        height: smallButtonMenu1,
                        width: smallButtonMenu1,
                        child: SvgPicture.asset(
                          'assets/svg/superLike.svg',
                          height: smallIconButtonMenu1,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: size.width * .03,
                    ),
                    InkWell(
                      highlightColor: Colors.transparent,
                      splashColor: Colors.transparent,
                      onTap: () {},
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            border:
                                Border.all(color: Color(0xFF00E5C3), width: 2)),
                        alignment: Alignment.center,
                        height: bigButtonMenu1,
                        width: bigButtonMenu1,
                        child: SvgPicture.asset(
                          'assets/svg/like.svg',
                          height: bigIconButtonMenu1,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: size.width * .03,
                    ),
                    InkWell(
                      highlightColor: Colors.transparent,
                      splashColor: Colors.transparent,
                      onTap: () {},
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            border:
                                Border.all(color: Color(0xFFAD2FEB), width: 2)),
                        alignment: Alignment.center,
                        height: smallButtonMenu1,
                        width: smallButtonMenu1,
                        child: SvgPicture.asset(
                          'assets/svg/combo.svg',
                          height: smallIconButtonMenu1,
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
      Menu2(),
      Menu3(),
      Menu4(),
    ];

    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.grey[300],
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
