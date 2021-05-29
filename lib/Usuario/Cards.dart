// import 'dart:async';
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:tinder_app/Usuario/matchCard.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Cards(),
    );
  }
}

class Cards extends StatefulWidget {
  @override
  _Cards createState() => _Cards();
}

class _Cards extends State<Cards> {
  GlobalKey myKey = GlobalKey();
  List<Widget> cardList = [];
  List<Color> colorList = [Colors.red, Colors.green, Colors.blue];

  void _removeCard(index) {
    setState(() {
      cardList.remove(index);
    });
  }

  getPosition() {
    final RenderBox renderBox = myKey.currentContext.findRenderObject();
    final position = renderBox.localToGlobal(Offset.zero);
    // print(position);
    return position;
  }

  @override
  void initState() {
    super.initState();
    for (int x = 0; x < 3; x++) {
      cardList.add(
        MatchCard(
          _removeCard,
          index: x,
          color: colorList[x],
          // myOffset: getPosition(),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    // final widthScreen = MediaQuery.of(context).size.width;
    // final heightScreen = MediaQuery.of(context).size.height -
    //     MediaQuery.of(context).padding.top -
    //     MediaQuery.of(context).padding.bottom;
    return Stack(children: cardList);
    // return Container(
    //   width: widthScreen,
    //   height: heightScreen,
    //   alignment: Alignment.center,
    //   padding: EdgeInsets.only(
    //       top: MediaQuery.of(context).padding.top,
    //       bottom: MediaQuery.of(context).padding.bottom),
    //   color: Colors.yellow,
    //   child: Stack(
    //     // alignment: Alignment.center,
    //     key: myKey,
    //     children: cardList,
    //   ),
    // );
  }
}
