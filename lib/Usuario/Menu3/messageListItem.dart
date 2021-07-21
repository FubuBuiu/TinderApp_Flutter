import 'package:flutter/material.dart';

class MessageListItem extends StatelessWidget {
  final json_user;

  const MessageListItem({Key key, @required this.json_user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final menuBarHeight = size.height * .07;
    final paddingBarNotification = MediaQuery.of(context).padding.top;
    final carouselArea = size.height - menuBarHeight - paddingBarNotification;
    final heightItemList = (carouselArea * .65) * .23;
    return Container(
      height: heightItemList,
      width: size.width,
      margin: EdgeInsets.only(left: size.width * .05),
      // color: Colors.black,
      child: Row(
        children: <Widget>[
          Container(
            // height: heightItemList * .75,
            width: heightItemList * .85,
            decoration: BoxDecoration(
                color: Colors.red,
                shape: BoxShape.circle,
                image: DecorationImage(
                    image: AssetImage(json_user['img']), fit: BoxFit.cover)),
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
                        json_user["name"],
                        style: TextStyle(
                            fontSize: heightItemList * .18,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      Text(
                        json_user["message"],
                        style: TextStyle(fontSize: heightItemList * .16),
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
