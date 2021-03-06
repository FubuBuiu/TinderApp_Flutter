import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tinder_app/Usuario/Menu1/matchCard.dart';

class Menu1 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Menu1();
  }
}

class _Menu1 extends State<Menu1> {
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
    final paddingBarNotification = MediaQuery.of(context).padding.top;
    final carouselArea = size.height - menuBarHeight - paddingBarNotification;
    final smallButtonMenu1 = carouselArea * .06;
    final bigButtonMenu1 = carouselArea * .08;
    final smallIconButtonMenu1 = smallButtonMenu1 * .45;
    final bigIconButtonMenu1 = bigButtonMenu1 * .45;

    return Container(
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
                    'N??o h?? ningu??m perto de voc??',
                    style: TextStyle(
                        color: Colors.grey[400], fontSize: carouselArea * .019),
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
              margin: EdgeInsets.only(bottom: carouselArea * .02),
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
    );
  }
}
