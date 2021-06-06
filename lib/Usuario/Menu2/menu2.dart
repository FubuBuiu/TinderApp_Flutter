import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:tinder_app/Usuario/Menu2/destaques.dart';
import 'package:tinder_app/Usuario/Menu2/likedYouCards.dart';

class Menu2 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Menu2();
  }
}

class _Menu2 extends State<Menu2> {
  final CarouselController _controller = CarouselController();
  List<Widget> likedYouList = [];
  List<Widget> commonInterest = [];
  List<Widget> recommendations = [];
  List<Widget> onlineRecently = [];
  int page = 0;
  @override
  void initState() {
    super.initState();
    for (int x = 0; x < 3; x++) {
      likedYouList.add(
        LikedYouCards(),
      );
    }
    for (int x = 0; x < 3; x++) {
      commonInterest.add(
        Destaques(),
      );
    }
    for (int x = 0; x < 3; x++) {
      recommendations.add(
        Destaques(),
      );
    }
    for (int x = 0; x < 3; x++) {
      onlineRecently.add(
        Destaques(),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final menuBarHeight = size.height * .07;
    final paddingBarNotification = MediaQuery.of(context).padding.top;
    final carouselArea = size.height - menuBarHeight - paddingBarNotification;
    final buttonsBarHeight = carouselArea * .06;
    List item = [
      SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.symmetric(
                      vertical: carouselArea - buttonsBarHeight) *
                  .037,
              child: Text(
                "Faça um upgrade para o Gold\npara ver quem já curtiu você.",
                style: TextStyle(fontSize: size.width * .045),
              ),
            ),
            Wrap(
              spacing: size.width * .02,
              runSpacing: size.width * .02,
              children: likedYouList,
            ),
          ],
        ),
      ),
      SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.symmetric(
                    horizontal: (carouselArea - buttonsBarHeight) * .037,
                    vertical: (carouselArea - buttonsBarHeight) * .025),
                child: Text(
                  "Interesses em comum",
                  style: TextStyle(
                      fontSize: size.width * .05, fontWeight: FontWeight.bold),
                ),
              ),
              Wrap(
                spacing: size.width * .02,
                runSpacing: size.width * .02,
                children: commonInterest,
              ),
              InkWell(
                highlightColor: Colors.transparent,
                splashColor: Colors.transparent,
                onTap: () {},
                child: Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.symmetric(
                      vertical: (carouselArea - buttonsBarHeight) * .03),
                  height: (carouselArea - buttonsBarHeight) * .07,
                  width: size.width * .4,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey.withOpacity(0.4),
                            spreadRadius: 1,
                            blurRadius: 2,
                            offset: Offset(0, 2))
                      ],
                      borderRadius: BorderRadius.circular(100)),
                  child: Text(
                    "VER MAIS",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize:
                            ((carouselArea - buttonsBarHeight) * .07) * .35),
                  ),
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.symmetric(
                    horizontal: (carouselArea - buttonsBarHeight) * .037,
                    vertical: (carouselArea - buttonsBarHeight) * .025),
                child: Text(
                  "Recomendações",
                  style: TextStyle(
                      fontSize: size.width * .05, fontWeight: FontWeight.bold),
                ),
              ),
              Wrap(
                spacing: size.width * .02,
                runSpacing: size.width * .02,
                children: recommendations,
              ),
              InkWell(
                highlightColor: Colors.transparent,
                splashColor: Colors.transparent,
                onTap: () {},
                child: Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.symmetric(
                      vertical: (carouselArea - buttonsBarHeight) * .03),
                  height: (carouselArea - buttonsBarHeight) * .07,
                  width: size.width * .4,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey.withOpacity(0.4),
                            spreadRadius: 1,
                            blurRadius: 2,
                            offset: Offset(0, 2))
                      ],
                      borderRadius: BorderRadius.circular(100)),
                  child: Text(
                    "VER MAIS",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize:
                            ((carouselArea - buttonsBarHeight) * .07) * .35),
                  ),
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.symmetric(
                    horizontal: (carouselArea - buttonsBarHeight) * .037,
                    vertical: (carouselArea - buttonsBarHeight) * .025),
                child: Text(
                  "Online recentemente",
                  style: TextStyle(
                      fontSize: size.width * .05, fontWeight: FontWeight.bold),
                ),
              ),
              Wrap(
                spacing: size.width * .02,
                runSpacing: size.width * .02,
                children: onlineRecently,
              ),
              InkWell(
                highlightColor: Colors.transparent,
                splashColor: Colors.transparent,
                onTap: () {},
                child: Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.symmetric(
                      vertical: (carouselArea - buttonsBarHeight) * .03),
                  height: (carouselArea - buttonsBarHeight) * .07,
                  width: size.width * .4,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey.withOpacity(0.4),
                            spreadRadius: 1,
                            blurRadius: 2,
                            offset: Offset(0, 2))
                      ],
                      borderRadius: BorderRadius.circular(100)),
                  child: Text(
                    "VER MAIS",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize:
                            ((carouselArea - buttonsBarHeight) * .07) * .35),
                  ),
                ),
              ),
            ],
          ))
    ];
    return Column(children: <Widget>[
      Container(
        // alignment: Alignment.topCenter,
        height: buttonsBarHeight,
        // width: size.width,
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: buttonsBarHeight,
              width: size.width * .49975,
              child: ButtonTheme(
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                child: FlatButton(
                  child: Text(
                    likedYouList.length.toString() + ' curtidas',
                    style: TextStyle(
                        color: page == 0 ? Colors.black : Colors.grey[350],
                        fontSize: (buttonsBarHeight * .45)),
                  ),
                  onPressed: () {
                    setState(() {
                      page = 0;
                    });
                    _controller.animateToPage(page,
                        duration: Duration(milliseconds: 100));
                  },
                ),
              ),
            ),
            VerticalDivider(
              color: Colors.grey[300],
              thickness: size.width * .005,
              width: 0,
              indent: buttonsBarHeight * .25,
              endIndent: buttonsBarHeight * .25,
            ),
            SizedBox(
              height: buttonsBarHeight,
              width: size.width * .49975,
              child: ButtonTheme(
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                child: FlatButton(
                  child: Text(
                    'Destaques',
                    style: TextStyle(
                        color: page == 1 ? Colors.black : Colors.grey[350],
                        fontSize: (buttonsBarHeight * .45)),
                  ),
                  onPressed: () {
                    setState(() {
                      page = 1;
                    });
                    _controller.animateToPage(page,
                        duration: Duration(milliseconds: 100));
                  },
                ),
              ),
            ),
          ],
        ),
      ),
      SingleChildScrollView(
        child: CarouselSlider.builder(
          carouselController: _controller,
          options: CarouselOptions(
            scrollPhysics: NeverScrollableScrollPhysics(),
            enableInfiniteScroll: false,
            height: carouselArea - buttonsBarHeight,
            viewportFraction: 1.0,
          ),
          itemCount: item.length,
          itemBuilder: (context, index, realIndex) {
            return item[index];
          },
        ),
      ),
    ]);
  }
}
