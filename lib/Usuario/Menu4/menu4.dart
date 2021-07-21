import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tinder_app/Usuario/Menu4/carouselSlide_AdTinderPlus.dart';
import 'package:tinder_app/data/account_json.dart';

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
    final heightAreaButtons = size.width * .28;
    final sizeButtonCamera = heightAreaButtons * .62;
    final TextStyle textStyleButtons = new TextStyle(
        fontSize: heightAreaButtons * .13,
        fontWeight: FontWeight.bold,
        color: Colors.grey[400]);

    return Container(
      color: Colors.grey[200],
      child: Column(
        children: <Widget>[
          ClipPath(
            clipper: OvalBottomBorderClipper(),
            child: Container(
              height: carouselArea * .73,
              width: size.width,
              padding: EdgeInsets.symmetric(horizontal: size.width * .02),
              color: Colors.white,
              child: Column(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(top: (carouselArea * .73) * .04),
                    height: size.width * .36,
                    width: size.width * .36,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: AssetImage(account_json[0]['img']),
                          fit: BoxFit.cover),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: (carouselArea * .73) * .02),
                    child: Text(
                      account_json[0]["name"] + ", " + account_json[0]["age"],
                      style: TextStyle(
                        fontSize: size.width * .06,
                      ),
                    ),
                  ),
                  Container(
                    // color: Colors.amber,
                    height: heightAreaButtons,
                    margin: EdgeInsets.only(top: (carouselArea * .73) * .04),
                    width: size.width,
                    child: Stack(
                      children: <Widget>[
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                            // color: Colors.red,
                            height: heightAreaButtons,
                            width: size.width * .33,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Container(
                                  margin: EdgeInsets.only(
                                      bottom: heightAreaButtons * .07),
                                  width: sizeButtonCamera * .9,
                                  height: sizeButtonCamera * .9,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      boxShadow: [
                                        BoxShadow(
                                            color: Colors.grey[200],
                                            offset: Offset(0, 3),
                                            spreadRadius: 5,
                                            blurRadius: 6)
                                      ]),
                                  child: FlatButton(
                                    highlightColor: Colors.transparent,
                                    color: Colors.white,
                                    shape: CircleBorder(),
                                    child: Icon(
                                      Icons.settings,
                                      color: Colors.grey[400],
                                      size: (sizeButtonCamera * .9) * .45,
                                    ),
                                    onPressed: () {},
                                  ),
                                ),
                                SizedBox(
                                  child: Text("CONFIGURAÇÕES",
                                      textAlign: TextAlign.center,
                                      style: textStyleButtons),
                                )
                              ],
                            ),
                          ),
                        ),
                        Align(
                          // alignment: Alignment.bottomCenter,
                          child: Container(
                            // color: Colors.red,
                            height: heightAreaButtons,
                            // width: size.width * .3,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                InkWell(
                                  onTap: () {},
                                  child: Container(
                                    // color: Colors.black,
                                    height: sizeButtonCamera,
                                    width: sizeButtonCamera,
                                    margin: EdgeInsets.only(
                                        bottom: heightAreaButtons * .07),
                                    child: Stack(
                                      children: [
                                        Align(
                                          alignment: Alignment.topLeft,
                                          child: Container(
                                            // height: sizeButtonCamera * .95,
                                            width: sizeButtonCamera * .95,
                                            padding: EdgeInsets.symmetric(
                                                horizontal:
                                                    sizeButtonCamera * .23),
                                            decoration: BoxDecoration(
                                                gradient: LinearGradient(
                                                  begin: Alignment.topRight,
                                                  end: Alignment.bottomCenter,
                                                  stops: [0.2, 0.5, 0.8],
                                                  colors: [
                                                    Color(0xFFFF655B),
                                                    Color(0xFFFF5864),
                                                    Color(0xFFFD297B)
                                                  ],
                                                ),
                                                shape: BoxShape.circle,
                                                color: Colors.blue),
                                            child: SvgPicture.asset(
                                              "assets/svg/camera.svg",
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.bottomRight,
                                          child: Container(
                                            height: sizeButtonCamera * .33,
                                            width: sizeButtonCamera * .33,
                                            decoration: BoxDecoration(
                                                boxShadow: [
                                                  BoxShadow(
                                                      color: Colors.grey
                                                          .withOpacity(0.2),
                                                      spreadRadius: 2,
                                                      blurRadius: 2,
                                                      offset: Offset(0, 0))
                                                ],
                                                shape: BoxShape.circle,
                                                color: Colors.white),
                                            child: Icon(
                                              Icons.add_rounded,
                                              size:
                                                  (sizeButtonCamera * .33) * .8,
                                              color: Color(0xFFF85162),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  child: Text(
                                    "ADD MÍDIA",
                                    style: textStyleButtons,
                                    textAlign: TextAlign.center,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Container(
                            // color: Colors.red,
                            height: heightAreaButtons,
                            width: size.width * .3,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Container(
                                    margin: EdgeInsets.only(
                                        bottom: heightAreaButtons * .07),
                                    width: sizeButtonCamera * .9,
                                    height: sizeButtonCamera * .9,
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        boxShadow: [
                                          BoxShadow(
                                              color: Colors.grey[200],
                                              offset: Offset(0, 3),
                                              spreadRadius: 5,
                                              blurRadius: 6)
                                        ]),
                                    child: FlatButton(
                                      // splashColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      color: Colors.white,
                                      shape: CircleBorder(),
                                      child: SvgPicture.asset(
                                        "assets/svg/lapis.svg",
                                        color: Colors.grey[400],
                                        height: (sizeButtonCamera * .9) * .45,
                                      ),
                                      onPressed: () {},
                                    )),
                                SizedBox(
                                  child: Text("EDITAR INFO",
                                      textAlign: TextAlign.center,
                                      style: textStyleButtons),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              height: carouselArea * .27,
              width: size.width,
              child: CarouselSlideAdTinderPlus(),
            ),
          ),
        ],
      ),
    );
  }
}
