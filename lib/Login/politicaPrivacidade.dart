import 'package:flutter/material.dart';

class PoliticaPrivacidade extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        alignment: Alignment.center,
        color: Colors.white,
        child: Text(
          'Política de Privacidade',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 50,
          ),
        ),
      ),
    );
  }
}
