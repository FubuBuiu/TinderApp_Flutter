import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Menu2 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Menu2();
  }
}

class _Menu2 extends State<Menu2> {
  final CarouselController _controller = CarouselController();
  List<Widget> likedYouList = [];
  // List<Widget> destaque = [];
  int page = 0;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final menuBarHeight = size.height * .07;
    final paddingBarNotification = MediaQuery.of(context).padding.top;
    final carouselArea = size.height - menuBarHeight - paddingBarNotification;
    final buttonsBarHeight = carouselArea * .07;
    List item = [
      Container(
        width: size.width,
        color: Colors.amber,
        child: ListView(
          children: likedYouList,
        ),
      ),
      Container(
        width: size.width,
        color: Colors.red,
      )
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
                child: FlatButton(
                  child: Text(
                    likedYouList.length.toString() + ' curtidas',
                    style: TextStyle(
                        color: page == 0 ? Colors.black : Colors.grey,
                        fontSize: (carouselArea * .035)),
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
              color: Colors.grey[400],
              thickness: size.width * .005,
              width: 0,
              indent: buttonsBarHeight * .15,
              endIndent: buttonsBarHeight * .15,
            ),
            SizedBox(
              height: buttonsBarHeight,
              width: size.width * .49975,
              child: ButtonTheme(
                child: FlatButton(
                  child: Text(
                    'Destaques',
                    style: TextStyle(
                        color: page == 1 ? Colors.black : Colors.grey,
                        fontSize: (carouselArea * .035)),
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
