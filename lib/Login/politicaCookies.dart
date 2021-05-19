import 'package:flutter/material.dart';

class PoliticaCookies extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        alignment: Alignment.center,
        color: Colors.white,
        child: Text(
          'Política de Cookies',
          textAlign: TextAlign.center,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 50),
        ),
      ),
    );
  }
}
