import 'package:flutter/material.dart';

class Termos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        alignment: Alignment.center,
        color: Colors.white,
        child: Text(
          'Termos',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 50),
        ),
      ),
    );
  }
}
