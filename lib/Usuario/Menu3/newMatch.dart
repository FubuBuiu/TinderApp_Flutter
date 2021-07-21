import 'package:flutter/material.dart';

class NewMatch extends StatelessWidget {
  // final index;
  final jsonUser;

  const NewMatch({Key key, @required this.jsonUser}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final menuBarHeight = size.height * .07;
    final paddingBarNotification = MediaQuery.of(context).padding.top;
    final carouselArea = size.height - menuBarHeight - paddingBarNotification;
    final newMatchHeight = (carouselArea * .25) - ((carouselArea * .25) * .2);
    final widthCircle = size.width * .22;

    return Container(
      height: newMatchHeight,
      // padding: EdgeInsets.symmetric(vertical: newMatchHeight * .1),
      // color: Colors.blue,
      child: InkWell(
        splashColor: Colors.transparent,
        onTap: () {},
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                height: widthCircle,
                width: widthCircle,
                margin: EdgeInsets.only(bottom: newMatchHeight * .05),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.red,
                    image: DecorationImage(
                        image: AssetImage(jsonUser["img"]), fit: BoxFit.cover)),
              ),
              Container(
                alignment: Alignment.center,
                width: widthCircle,
                child: Text(
                  jsonUser["name"],
                  style: TextStyle(
                      fontSize: newMatchHeight * .1,
                      fontWeight: FontWeight.bold),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
