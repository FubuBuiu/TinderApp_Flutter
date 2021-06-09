import 'package:flutter/material.dart';

class NewMatch extends StatelessWidget {
  // final index;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final menuBarHeight = size.height * .07;
    final paddingBarNotification = MediaQuery.of(context).padding.top;
    final carouselArea = size.height - menuBarHeight - paddingBarNotification;
    final newMatchHeight = carouselArea * .3 - ((carouselArea * .3) * .25);
    final circularPictureHeight = newMatchHeight * .55;
    return InkWell(
      onTap: () {},
      // splashColor: Colors.grey,
      hoverColor: Colors.grey,
      child: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(vertical: newMatchHeight * .15),
        height: newMatchHeight,
        width: size.width * .2,
        // color: Colors.red,
        child: Stack(
          children: <Widget>[
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                height: circularPictureHeight,
                width: circularPictureHeight,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: Colors.amber,
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Text(
                "Pessoa",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: newMatchHeight * .09),
                textAlign: TextAlign.center,
              ),
            )
          ],
        ),
      ),
    );
  }
}
