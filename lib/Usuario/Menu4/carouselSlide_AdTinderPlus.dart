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
    final adCarouselArea = (carouselArea * .3) * .45;
    List<Widget> ads = [
      Container(
        // color: Colors.amber,
        // alignment: Alignment.topLeft,
        padding: EdgeInsets.symmetric(horizontal: size.width * .06),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(bottom: adCarouselArea * .08),
              // color: Colors.red,
              height: adCarouselArea * .5,
              alignment: Alignment.bottomCenter,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                      margin: EdgeInsets.only(right: 15),
                      child: SvgPicture.asset("svg/blackFire.svg",
                          height: (carouselArea * 3) * .01)),
                  Text(
                    "Faça cada curtida valer a pena",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: size.width * .05),
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
                  style: TextStyle(fontSize: size.width * .04),
                ),
              ),
            ),
          ],
        ),
      ),
      Container(
        // color: Colors.amber,
        // alignment: Alignment.topLeft,
        padding: EdgeInsets.symmetric(horizontal: size.width * .06),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(bottom: adCarouselArea * .08),
              // color: Colors.red,
              height: adCarouselArea * .5,
              alignment: Alignment.bottomCenter,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(right: 15),
                    child: SvgPicture.asset(
                      "svg/Menu/fire.svg",
                      height: (carouselArea * 3) * .01,
                      color: Color(0xFFE9AA43),
                    ),
                  ),
                  Text(
                    "Assine o Tinder Gold",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: size.width * .05),
                  )
                ],
              ),
            ),
            Expanded(
              child: Container(
                // color: Colors.blue,
                child: Text(
                  "Veja quem curtiu você e mais!",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: size.width * .04),
                ),
              ),
            ),
          ],
        ),
      ),
      Container(
        // color: Colors.amber,
        // alignment: Alignment.topLeft,
        padding: EdgeInsets.symmetric(horizontal: size.width * .06),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(bottom: adCarouselArea * .08),
              // color: Colors.red,
              height: adCarouselArea * .5,
              alignment: Alignment.bottomCenter,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(right: 15),
                    child: SvgPicture.asset(
                      "svg/combo.svg",
                      height: (carouselArea * 3) * .01,
                      color: Color(0xFF941ECF),
                    ),
                  ),
                  Text(
                    "Faça Matches mais rápido",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: size.width * .05),
                  )
                ],
              ),
            ),
            Expanded(
              child: Container(
                // color: Colors.blue,
                child: Text(
                  "1 Boost gratuito a cada 1 mês",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: size.width * .04),
                ),
              ),
            ),
          ],
        ),
      ),
      Container(
        // color: Colors.amber,
        // alignment: Alignment.topLeft,
        padding: EdgeInsets.symmetric(horizontal: size.width * .06),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(bottom: adCarouselArea * .08),
              // color: Colors.red,
              height: adCarouselArea * .5,
              alignment: Alignment.bottomCenter,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(right: 15),
                    child: SvgPicture.asset(
                      "svg/superLike.svg",
                      height: (carouselArea * 3) * .01,
                    ),
                  ),
                  Text(
                    "Chame a atenção com os Super Likes",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: size.width * .045),
                  )
                ],
              ),
            ),
            Expanded(
              child: Container(
                // color: Colors.blue,
                child: Text(
                  "Você terá 3x mais chances de dar um Match!",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: size.width * .04),
                ),
              ),
            ),
          ],
        ),
      ),
      Container(
        // color: Colors.amber,
        // alignment: Alignment.topLeft,
        padding: EdgeInsets.symmetric(horizontal: size.width * .06),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(bottom: adCarouselArea * .08),
              // color: Colors.red,
              height: adCarouselArea * .5,
              alignment: Alignment.bottomCenter,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(right: 15),
                    child: Icon(
                      Icons.location_on,
                      size: (carouselArea * 3) * .012,
                      color: Colors.blue[600],
                    ),
                  ),
                  Text(
                    "Curta perfis mundo afora",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: size.width * .05),
                  )
                ],
              ),
            ),
            Expanded(
              child: Container(
                // color: Colors.blue,
                child: Text(
                  "Passaporte para qualquer lugar com o Tinder Plus!",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: size.width * .04),
                ),
              ),
            ),
          ],
        ),
      ),
      Container(
        color: Colors.amber,
        // alignment: Alignment.topLeft,
        padding: EdgeInsets.symmetric(horizontal: size.width * .06),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(bottom: adCarouselArea * .08),
              // color: Colors.red,
              height: adCarouselArea * .5,
              alignment: Alignment.bottomCenter,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(right: 15),
                    child: SvgPicture.asset(
                      "svg/Menu/fire.svg",
                      height: (carouselArea * 3) * .01,
                    ),
                  ),
                  Text(
                    "Controle seu perfil",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: size.width * .05),
                  )
                ],
              ),
            ),
            Expanded(
              child: Container(
                // color: Colors.blue,
                child: Text(
                  "Limite o que os outros veem com o Tinder Plus",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: size.width * .04),
                ),
              ),
            ),
          ],
        ),
      ),
      Container(
        // color: Colors.amber,
        // alignment: Alignment.topLeft,
        padding: EdgeInsets.symmetric(horizontal: size.width * .06),
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
                    margin: EdgeInsets.only(right: 15),
                    child: SvgPicture.asset(
                      "svg/retorno.svg",
                      height: (carouselArea * 3) * .01,
                    ),
                  ),
                  Text(
                    "Use o Voltar para curtir ou ignorar",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: size.width * .05),
                  )
                ],
              ),
            ),
            Expanded(
              child: Container(
                // color: Colors.blue,
                child: Text(
                  "Volte quantas vezes quiser com o Tinder Plus!",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: size.width * .04),
                ),
              ),
            ),
          ],
        ),
      ),
      Container(
        // color: Colors.amber,
        // alignment: Alignment.topLeft,
        padding: EdgeInsets.symmetric(horizontal: size.width * .06),
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
                    margin: EdgeInsets.only(right: 15),
                    child: SvgPicture.asset(
                      "svg/like.svg",
                      height: (carouselArea * 3) * .01,
                    ),
                  ),
                  Text(
                    "Aumente suas chances",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: size.width * .05),
                  )
                ],
              ),
            ),
            Expanded(
              child: Container(
                // color: Colors.blue,
                child: Text(
                  "Descole curtidas ilimitadas com o Tinder Plus!",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: size.width * .04),
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
                horizontal: size.width * .22),
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
                              ? Color(0xFFE9AA43)
                              : Colors.red,
                      fontWeight: FontWeight.bold,
                      fontSize: size.width * .04),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
