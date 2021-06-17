import 'package:flutter/material.dart';

class MessageListItem extends StatelessWidget {
  // final index;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final menuBarHeight = size.height * .07;
    final paddingBarNotification = MediaQuery.of(context).padding.top;
    final carouselArea = size.height - menuBarHeight - paddingBarNotification;
    final heightItemList = (carouselArea * .65) * .25;
    return Container(
      height: heightItemList,
      width: size.width,
      margin: EdgeInsets.only(left: size.width * .05),
      // color: Colors.black,
      child: Row(
        children: <Widget>[
          Container(
            height: heightItemList * .85,
            width: heightItemList * .85,
            decoration: BoxDecoration(
                color: Colors.red, borderRadius: BorderRadius.circular(100)),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.only(left: size.width * .03),
              // color: Colors.orange,
              child: Stack(
                children: <Widget>[
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Name",
                        style: TextStyle(fontSize: heightItemList * .18),
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      Text(
                        "last message",
                        style: TextStyle(fontSize: heightItemList * .13),
                      ),
                    ],
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Divider(
                      color: Colors.grey[350],
                      thickness: 1.5,
                      height: 0,
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
