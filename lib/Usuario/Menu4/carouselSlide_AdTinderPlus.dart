import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CarouselSlideAdTinderPlus extends StatefulWidget {
  double height;
  @override
  State<StatefulWidget> createState() {
    return _CarouselSlideAdTinderPlus();
  }
}

class _CarouselSlideAdTinderPlus extends State<CarouselSlideAdTinderPlus> {
  final CarouselController _controller = CarouselController();
  int _current = 0;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final menuBarHeight = size.height * .07;
    final paddingBarNotification = MediaQuery.of(context).padding.top;
    final carouselArea = size.height - menuBarHeight - paddingBarNotification;
    final adCarouselArea = (carouselArea * .3) * .5;
    List<Widget> ads = [
      Container(
        // color: Colors.amber,
        // alignment: Alignment.topLeft,
        padding: EdgeInsets.symmetric(horizontal: size.width * .1),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(bottom: adCarouselArea * .1),
              // color: Colors.red,
              height: adCarouselArea * .5,
              alignment: Alignment.bottomCenter,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(right: 10),
                    child: SvgPicture.asset(
                      "svg/Menu/fire.svg",
                      height: (carouselArea * 3) * .011,
                    ),
                  ),
                  Text(
                    "Faça cada curtida valer a pena",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: (carouselArea * 3) * .01),
                  )
                ],
              ),
            ),
            Expanded(
              child: Container(
                // color: Colors.blue,
                child: Text(
                  "Os membros Platinum dão mais Matches e conversam mais",
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ),
      ),
      Container(
        padding: EdgeInsets.symmetric(horizontal: size.width * .1),
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(bottom: adCarouselArea * .1),
              height: adCarouselArea * .5,
              alignment: Alignment.bottomCenter,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(right: 10),
                    child: SvgPicture.asset(
                      "svg/Menu/fire.svg",
                      height: (carouselArea * 3) * .011,
                    ),
                  ),
                  Text(
                    "Assine o Tinder Gold",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: (carouselArea * 3) * .01),
                  )
                ],
              ),
            ),
            Expanded(
              child: Container(
                child: Text(
                  "Veja quem curtiu você e mais!",
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ),
      ),
      Container(
        padding: EdgeInsets.symmetric(horizontal: size.width * .1),
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(bottom: adCarouselArea * .1),
              height: adCarouselArea * .5,
              alignment: Alignment.bottomCenter,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(right: 10),
                    child: SvgPicture.asset(
                      "svg/Menu/fire.svg",
                      height: (carouselArea * 3) * .011,
                    ),
                  ),
                  Text(
                    "Faça Matches mais rápido",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: (carouselArea * 3) * .01),
                  )
                ],
              ),
            ),
            Expanded(
              child: Container(
                child: Text(
                  "1 Boost gratuito a cada um mês",
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ),
      ),
      Container(
        padding: EdgeInsets.symmetric(horizontal: size.width * .1),
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(bottom: adCarouselArea * .1),
              height: adCarouselArea * .5,
              alignment: Alignment.bottomCenter,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(right: 10),
                    child: SvgPicture.asset(
                      "svg/Menu/fire.svg",
                      height: (carouselArea * 3) * .011,
                    ),
                  ),
                  Text(
                    "Chame atenção com os Super Likes",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: (carouselArea * 3) * .01),
                  )
                ],
              ),
            ),
            Expanded(
              child: Container(
                child: Text(
                  "Você terá 3x mais chances de dar um Match!",
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ),
      ),
      Container(
        padding: EdgeInsets.symmetric(horizontal: size.width * .1),
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(bottom: adCarouselArea * .1),
              height: adCarouselArea * .5,
              alignment: Alignment.bottomCenter,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(right: 10),
                    child: SvgPicture.asset(
                      "svg/Menu/fire.svg",
                      height: (carouselArea * 3) * .011,
                    ),
                  ),
                  Text(
                    "Curta perfis mundo afora",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: (carouselArea * 3) * .01),
                  )
                ],
              ),
            ),
            Expanded(
              child: Container(
                child: Text(
                  "Passaporte para qualquer lugar com o Tinder Plus!",
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ),
      ),
      Container(
        padding: EdgeInsets.symmetric(horizontal: size.width * .1),
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(bottom: adCarouselArea * .1),
              height: adCarouselArea * .5,
              alignment: Alignment.bottomCenter,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(right: 10),
                    child: SvgPicture.asset(
                      "svg/Menu/fire.svg",
                      height: (carouselArea * 3) * .011,
                    ),
                  ),
                  Text(
                    "Controle seu perfil",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: (carouselArea * 3) * .01),
                  )
                ],
              ),
            ),
            Expanded(
              child: Container(
                child: Text(
                  "Limite o que os outros veem sobre você com o Tinder Plus",
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ),
      ),
      Container(
        padding: EdgeInsets.symmetric(horizontal: size.width * .1),
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(bottom: adCarouselArea * .1),
              height: adCarouselArea * .5,
              alignment: Alignment.bottomCenter,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(right: 10),
                    child: SvgPicture.asset(
                      "svg/Menu/fire.svg",
                      height: (carouselArea * 3) * .011,
                    ),
                  ),
                  Text(
                    "Use o Voltar para curtir ou ignorar",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: (carouselArea * 3) * .01),
                  )
                ],
              ),
            ),
            Expanded(
              child: Container(
                child: Text(
                  "Volte quantas vezes quiser com o Tinder Plus",
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ),
      ),
      Container(
        padding: EdgeInsets.symmetric(horizontal: size.width * .1),
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(bottom: adCarouselArea * .1),
              height: adCarouselArea * .5,
              alignment: Alignment.bottomCenter,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(right: 10),
                    child: SvgPicture.asset(
                      "svg/Menu/fire.svg",
                      height: (carouselArea * 3) * .011,
                    ),
                  ),
                  Text(
                    "Aumente suas chances",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: (carouselArea * 3) * .01),
                  )
                ],
              ),
            ),
            Expanded(
              child: Container(
                child: Text(
                  "Descole curtidas ilimitadas com o Tinder Plus!",
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ),
      ),
    ];

    return Column(
      children: <Widget>[
        LayoutBuilder(
          builder: (_, contraints) {
            return SingleChildScrollView(
              child: CarouselSlider(
                items: ads,
                carouselController: _controller,
                options: CarouselOptions(
                    // scrollPhysics: NeverScrollableScrollPhysics(),
                    height: adCarouselArea,
                    enableInfiniteScroll: false,
                    viewportFraction: 1.0,
                    // autoPlay: true,
                    onPageChanged: (index, reason) {
                      setState(() {
                        _current = index;
                      });
                    }),
              ),
            );
          },
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: ads.asMap().entries.map((entry) {
            return GestureDetector(
              child: Container(
                width: size.width * .015,
                height: size.width * .015,
                margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 2.0),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: (Theme.of(context).brightness == Brightness.dark
                            ? Colors.white
                            : Colors.black)
                        .withOpacity(_current == entry.key ? 0.9 : 0.4)),
              ),
            );
          }).toList(),
        ),
        Expanded(
          child: Container(
            padding: EdgeInsets.symmetric(
                vertical: (carouselArea * .3) * .07,
                horizontal: size.width * .2),
            width: size.width,
            child: ButtonTheme(
              splashColor: Colors.transparent,
              buttonColor: Colors.white,
              // highlightColor: Colors.transparent,
              // disabledColor: Colors.black,
              shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(100)),
              child: RaisedButton(
                onPressed: () {},
                child: Text(
                  _current == 0
                      ? "SABER MAIS"
                      : _current == 1
                          ? "ASSINE O TINDER GOLD"
                          : "MEU TINDER PLUS",
                  style: TextStyle(
                      color: _current == 0
                          ? Colors.black
                          : _current == 1
                              ? Colors.yellow
                              : Colors.red,
                      fontWeight: FontWeight.bold,
                      fontSize: (carouselArea * .3) * .085),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
