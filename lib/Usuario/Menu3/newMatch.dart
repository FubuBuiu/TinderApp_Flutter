import 'package:flutter/material.dart';

class NewMatch extends StatelessWidget {
  // final index;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final menuBarHeight = size.height * .07;
    final paddingBarNotification = MediaQuery.of(context).padding.top;
    final carouselArea = size.height - menuBarHeight - paddingBarNotification;
    final newMatchHeight = (carouselArea * .25) - ((carouselArea * .25) * .2);
    final circularPictureHeight = size.width * .18;
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(vertical: newMatchHeight * .15),
      height: newMatchHeight,
      width: size.width * .18,
      // color: Colors.red,
      child: InkWell(
        splashColor: Colors.transparent,
        onTap: () {},
        child: Container(
          child: Stack(
            children: <Widget>[
              Align(
                alignment: Alignment.topCenter,
                child: Container(
                  height: circularPictureHeight,
                  width: circularPictureHeight,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Colors.red,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Text(
                  "Pessoa",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: newMatchHeight * .1),
                  textAlign: TextAlign.center,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
