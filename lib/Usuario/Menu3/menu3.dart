import 'package:flutter/material.dart';
import 'package:tinder_app/Usuario/Menu3/newMatch.dart';

class Menu3 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Menu3();
  }
}

class _Menu3 extends State<Menu3> {
  List<Widget> newMatchesList = [];

  @override
  void initState() {
    super.initState();
    for (int x = 0; x < 8; x++) {
      newMatchesList.add(
        NewMatch(),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    TextEditingController _searchMatch = TextEditingController();
    final size = MediaQuery.of(context).size;
    final menuBarHeight = size.height * .07;
    final paddingBarNotification = MediaQuery.of(context).padding.top;
    final carouselArea = size.height - menuBarHeight - paddingBarNotification;
    final searchBar = carouselArea * .06;
    final newMatchesContainerHeight = carouselArea * .3;
    final messagesContainerHeight = carouselArea * .63;
    return Column(
      children: <Widget>[
        // 7% de aultura
        Container(
          margin: EdgeInsets.only(top: carouselArea * .01),
          height: searchBar,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                height: searchBar,
                width: size.width * .10,
                child: Icon(
                  Icons.search,
                  color: Colors.red,
                ),
              ),
              Container(
                width: size.width * .8,
                child: TextField(
                  controller: _searchMatch,
                  autofocus: false,
                  keyboardType: TextInputType.name,
                  style: TextStyle(fontSize: searchBar * .45),
                  cursorColor: Colors.red,
                  decoration: new InputDecoration(
                    floatingLabelBehavior: FloatingLabelBehavior.never,
                    hintText: "Buscar Matches",
                    focusedBorder: new UnderlineInputBorder(
                      borderSide: new BorderSide(color: Colors.red, width: 0.5),
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
        //30% de altura
        Container(
          width: size.width,
          height: newMatchesContainerHeight,
          // color: Colors.red,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                padding: EdgeInsets.symmetric(horizontal: size.width * .05),
                alignment: Alignment.bottomLeft,
                // color: Colors.black,
                width: size.width,
                height: newMatchesContainerHeight * .25,
                child: Text(
                  "Novos Matches",
                  style: TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                      fontSize: newMatchesContainerHeight * .08),
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
        // 63% de altura
        Container(
          width: size.width,
          height: messagesContainerHeight,
          color: Colors.yellow,
        ),
      ],
    );
  }
}
