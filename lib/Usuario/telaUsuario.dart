import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TelaUsuario extends StatefulWidget {
  @override
  _TelaUsuario createState() => _TelaUsuario();
}

class _TelaUsuario extends State<TelaUsuario> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          color: Colors.white,
          width: MediaQuery.of(context).size.width,
          height: 500, // 90 é o certo
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Stack(
              // alignment: Alignment.center,
              children: <Widget>[
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height - 90,
                  color: Colors.blue,
                  alignment: Alignment.center,
                  child: Text('MATCH'),
                ),
              ],
            ),
            // Stack(
            //   children: <Widget>[
            //     Container(
            //       child: Text(''),
            //     )
            //   ],
            // )
          ],
        ),
      ],
    );
  }
}
