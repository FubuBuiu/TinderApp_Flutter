import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MatchCard extends StatelessWidget {
  final int index;
  final Function(MatchCard) removeCard;
  final Color color;

  const MatchCard(this.removeCard, {Key key, @required this.index, this.color})
      : super(key: key);

  getPosition(GlobalKey myKey) {
    final RenderBox renderBox = myKey.currentContext.findRenderObject();
    final position = renderBox.localToGlobal(Offset.zero);
    print(position);
    return position;
  }

  @override
  Widget build(BuildContext context) {
    final widthScreen = MediaQuery.of(context).size.width;
    final heightScreen = MediaQuery.of(context).size.height -
        MediaQuery.of(context).size.height * .07 -
        MediaQuery.of(context).padding.top;
    GlobalKey myKey = GlobalKey();
    return Positioned(
      key: myKey,
      child: Draggable(
        onDragEnd: (drag) {
          // print(drag.offset.dx);
          // print(getPosition(myKey));
          // print(widthScreen / -3);
          if (((drag.offset.dy < getPosition(myKey).dy * -4) &&
                  (drag.offset.dx > widthScreen / 3)) ||
              ((drag.offset.dy < getPosition(myKey).dy * -4) &&
                  (drag.offset.dx < widthScreen / -3))) {
            // print("NOTHING");
          } else if (drag.offset.dy < getPosition(myKey).dy * -4) {
            removeCard(this);
            // print("UP");
          } else if (drag.offset.dx > widthScreen / 3) {
            removeCard(this);
            // print("RIGHT");
          } else if (drag.offset.dx < widthScreen / -3) {
            removeCard(this);
            // print("LEFT");
          }
        },
        childWhenDragging: Container(),
        feedback: Card(
          color: color,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          child: Container(
            width: widthScreen * .97,
            height: heightScreen * .98,
          ),
        ),
        child: Card(
          color: color,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          child: Container(
            width: widthScreen * .97,
            height: heightScreen * .98,
          ),
        ),
      ),
    );
  }
}
