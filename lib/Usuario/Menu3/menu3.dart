import 'package:flutter/material.dart';
import 'package:tinder_app/Usuario/Menu3/messageListItem.dart';
import 'package:tinder_app/Usuario/Menu3/newMatch.dart';

class Menu3 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Menu3();
  }
}

class _Menu3 extends State<Menu3> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    TextEditingController _searchMatch = TextEditingController();
    List<Widget> newMatchesList = [];
    List<Widget> messageList = [];
    final size = MediaQuery.of(context).size;
    final menuBarHeight = size.height * .07;
    final paddingBarNotification = MediaQuery.of(context).padding.top;
    final carouselArea = size.height - menuBarHeight - paddingBarNotification;
    final searchBar = carouselArea * .1;
    final newMatchesContainerHeight = carouselArea * .25;
    final messagesContainerHeight = carouselArea * .65;
    for (int x = 0; x < 8; x++) {
      newMatchesList.add(SizedBox(
        width: size.width * .02,
      ));
      newMatchesList.add(
        NewMatch(),
      );
    }
    newMatchesList.add(
      SizedBox(
        width: size.width * .02,
      ),
    );

    for (int x = 0; x < 5; x++) {
      messageList.add(MessageListItem());
    }

    return Column(
      children: <Widget>[
        // 10% de aultura
        Flexible(
          flex: 0,
          child: Container(
            // color: Colors.amber,
            alignment: Alignment.center,
            // margin: EdgeInsets.only(top: carouselArea * .01),
            height: searchBar,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  height: searchBar,
                  width: size.width * .10,
                  // color: Colors.blue,
                  child: Icon(
                    Icons.search,
                    color: Colors.red,
                  ),
                ),
                Container(
                  // alignment: Alignment.bottomCenter,
                  width: size.width * .85,
                  height: searchBar * .6,
                  // color: Colors.green,
                  child: TextField(
                    controller: _searchMatch,
                    autofocus: false,
                    keyboardType: TextInputType.name,
                    style: TextStyle(fontSize: (searchBar * .6) * .43),
                    cursorColor: Colors.red,
                    decoration: new InputDecoration(
                      floatingLabelBehavior: FloatingLabelBehavior.never,
                      hintText: "Buscar Matches",
                      focusedBorder: new UnderlineInputBorder(
                        borderSide:
                            new BorderSide(color: Colors.red, width: 0.5),
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.red, width: 0.5),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Flexible(
          flex: 1,
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Container(
              child: Column(
                children: <Widget>[
                  //30% de altura
                  Container(
                    width: size.width,
                    height: newMatchesContainerHeight,
                    // color: Colors.red,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: size.width * .05),
                          alignment: Alignment.bottomLeft,
                          // color: Colors.black,
                          width: size.width,
                          height: newMatchesContainerHeight * .2,
                          child: Text(
                            "Novos Matches",
                            style: TextStyle(
                                color: Colors.red,
                                fontWeight: FontWeight.bold,
                                fontSize: newMatchesContainerHeight * .09),
                          ),
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                              // crossAxisAlignment: CrossAxisAlignment.start,
                              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: newMatchesList),
                        )
                      ],
                    ),
                  ),
                  // 60% de altura
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: size.width * .05),
                    alignment: Alignment.centerLeft,
                    // color: Colors.black,
                    width: size.width,
                    height: newMatchesContainerHeight * .2,
                    child: Text(
                      "Mensagens",
                      style: TextStyle(
                          color: Colors.red,
                          fontWeight: FontWeight.bold,
                          fontSize: newMatchesContainerHeight * .09),
                    ),
                  ),
                  Wrap(
                    children: messageList,
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

//  Container(
//           child: Column(
//             children: <Widget>[
//               //30% de altura
//               Container(
//                 width: size.width,
//                 height: newMatchesContainerHeight,
//                 // color: Colors.red,
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: <Widget>[
//                     Container(
//                       padding:
//                           EdgeInsets.symmetric(horizontal: size.width * .05),
//                       alignment: Alignment.bottomLeft,
//                       color: Colors.black,
//                       width: size.width,
//                       height: newMatchesContainerHeight * .25,
//                       child: Text(
//                         "Novos Matches",
//                         style: TextStyle(
//                             color: Colors.red,
//                             fontWeight: FontWeight.bold,
//                             fontSize: newMatchesContainerHeight * .08),
//                       ),
//                     ),
//                     SingleChildScrollView(
//                       scrollDirection: Axis.horizontal,
//                       child: Row(
//                           // crossAxisAlignment: CrossAxisAlignment.start,
//                           // mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           children: newMatchesList),
//                     )
//                   ],
//                 ),
//               ),
//               // 63% de altura
//               Container(
//                 width: size.width,
//                 height: messagesContainerHeight,
//                 color: Colors.yellow,
//               ),
//             ],
//           ),
//         ),
