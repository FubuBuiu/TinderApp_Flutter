import 'package:flutter/material.dart';

class LikedYouCards extends StatelessWidget {
  final user;

  const LikedYouCards({Key key, @required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      decoration: BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(
            image: AssetImage(
              user['img'],
            ),
            fit: BoxFit.cover),
      ),
      width: size.width * .45,
      height: (size.width * .45) + ((size.width * .45) * .5),
    );
  }
}
