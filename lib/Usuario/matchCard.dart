import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MatchCard extends StatelessWidget {
  final int index;
  // final Offset myOffset;
  final Function(MatchCard) removeCard;
  final Color color;
  // final widthScreen;
  // final heightScreen;

  const MatchCard(this.removeCard, {Key key, @required this.index, this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final widthScreen = MediaQuery.of(context).size.width;
    final heightScreen = MediaQuery.of(context).size.height -
        MediaQuery.of(context).size.height * .08 -
        MediaQuery.of(context).padding.top;
    return Draggable(
      onDragEnd: (drag) {
        // print(drag.offset.dx);
        // print(myOffset);
        // print(widthScreen / -3);
        // if (((drag.offset.dy < myOffset.dy * -4) &&
        //         (drag.offset.dx > widthScreen / 3)) ||
        //     ((drag.offset.dy < myOffset.dy * -4) &&
        //         (drag.offset.dx < widthScreen / -3))) {
        //   // _removeCard(x);
        //   print("NOTHING");
        // } else if (drag.offset.dy < getPosition().dy * -4) {
        //   // _removeCard(x);
        //   print("UP");
        // } else if (drag.offset.dx > widthScreen / 3) {
        //   // _removeCard(x);
        //   print("RIGHT");
        // } else if (drag.offset.dx < widthScreen / -3) {
        //   // _removeCard(x);
        //   print("LEFT");
        // }

        // if (drag.offset.direction > 1) {
        //   print("Swipe left");
        //   removeCard(this);
        // } else {
        //   print("Swipe right");
        // }
      },
      childWhenDragging: Container(),
      feedback: Card(
        color: color,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Container(
          width: widthScreen * .97,
          height: heightScreen * .98,
        ),
      ),
      child: Card(
        color: color,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Container(
          width: widthScreen * .97,
          height: heightScreen * .98,
        ),
      ),
    );
  }
}

// List _getMatchCard() {

//   List<Widget> cardList = [];

//   for (int x = 0; x < 2; x++) {
//     cardList.add(
//       Draggable(
//         onDragEnd: (drag) {
//           print(drag.offset.dx);
//           print(widthScreen / -3);
//           if (((drag.offset.dy < getPosition().dy * -4) &&
//                   (drag.offset.dx > widthScreen / 3)) ||
//               ((drag.offset.dy < getPosition().dy * -4) &&
//                   (drag.offset.dx < widthScreen / -3))) {
//             // _removeCard(x);
//             print("NOTHING");
//           } else if (drag.offset.dy < getPosition().dy * -4) {
//             _removeCard(x);
//             print("UP");
//           } else if (drag.offset.dx > widthScreen / 3) {
//             // _removeCard(x);
//             print("RIGHT");
//           } else if (drag.offset.dx < widthScreen / -3) {
//             // _removeCard(x);
//             print("LEFT");
//           }
//         },
//         childWhenDragging: Container(),
//         feedback: Card(
//           color: cards[x].color,
//           shape: RoundedRectangleBorder(
//               borderRadius: BorderRadius.circular(10)),
//           child: Container(
//             width: cards[x].width,
//             height: cards[x].height,
//           ),
//         ),
//         child: Card(
//           color: cards[x].color,
//           shape: RoundedRectangleBorder(
//               borderRadius: BorderRadius.circular(10)),
//           child: Container(
//             width: cards[x].width,
//             height: cards[x].height,
//           ),
//         ),
//       ),
//     );
//   }

//   return cardList;
// }
