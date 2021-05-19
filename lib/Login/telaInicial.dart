import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:tinder_app/Login/problemasComLogin.dart';
import 'package:tinder_app/Login/termos.dart';
import 'package:tinder_app/Login/politicaPrivacidade.dart';
import 'package:tinder_app/Login/politicaCookies.dart';
import 'package:tinder_app/Usuario/telaUsuario.dart';

class TelaInicial extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TextStyle defaultStyle = TextStyle(
        color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold);
    TextStyle linktStyle = TextStyle(
        color: Colors.white,
        fontSize: 15,
        fontWeight: FontWeight.bold,
        decoration: TextDecoration.underline);
    return Stack(
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            color: Color(0xFFFD297B),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomCenter,
              stops: [0.1, 0.4, 0.8],
              colors: [
                Color(0xFFFF655B),
                Color.fromARGB(255, 255, 88, 100),
                Color.fromARGB(30, 255, 88, 100)
              ],
            ),
          ),
        ),
        Column(children: [
          Flexible(
            flex: 20,
            child: Container(
              alignment: Alignment.center,
              child: Image(
                image: new AssetImage("images/Tela_Login/logo_Tinder.png"),
                width: 180,
              ),
            ),
          ),
          Flexible(
            flex: 3,
            child: Container(
              width: 380,
              margin: EdgeInsets.only(bottom: 15),
              child: RichText(
                textAlign: TextAlign.center,
                strutStyle:
                    StrutStyle(fontSize: 15, fontWeight: FontWeight.bold),
                text: TextSpan(style: defaultStyle, children: [
                  TextSpan(
                      text: "Ao tocar em entrar, você concorda com os nossos "),
                  TextSpan(
                      text: "Termos",
                      style: linktStyle,
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (_) => Termos()));
                        }),
                  TextSpan(
                      text: ". Saiba como processamos seus dados em nossa "),
                  TextSpan(
                      text: "Política de Privacidade",
                      style: linktStyle,
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (_) => PoliticaPrivacidade()));
                        }),
                  TextSpan(text: " e "),
                  TextSpan(
                      text: "Política de Cookies",
                      style: linktStyle,
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (_) => PoliticaCookies()));
                        }),
                  TextSpan(text: "."),
                ]),
              ),
            ),
          ),
          Flexible(
            flex: 3,
            child: Container(
              constraints: BoxConstraints(maxHeight: 50),
              margin: EdgeInsets.only(bottom: 15, left: 40, right: 40),
              child: ButtonTheme(
                shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(30)),
                child: FlatButton(
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  color: Colors.white,
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => TelaUsuario()));
                  },
                  child: Stack(children: <Widget>[
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Image.asset(
                        'images/Tela_Login/logo_Google.png',
                        height: 18,
                      ),
                    ),
                    Align(
                        alignment: Alignment.center,
                        child: Text(
                          "ENTRAR COM O GOOGLE",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.grey[700]),
                          textAlign: TextAlign.center,
                        ))
                  ]),
                ),
              ),
            ),
          ),
          Flexible(
            flex: 3,
            child: Container(
              constraints: BoxConstraints(maxHeight: 50),
              margin: EdgeInsets.only(bottom: 15, left: 40, right: 40),
              child: ButtonTheme(
                shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(30)),
                child: FlatButton(
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  color: Colors.white,
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => TelaUsuario()));
                  },
                  child: Stack(children: <Widget>[
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        child: Image.asset(
                          'images/Tela_Login/logo_Facebook.png',
                          height: 21,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Text(
                        'ENTRAR COM O FACEBOOK',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.grey[700]),
                      ),
                    ),
                  ]),
                ),
              ),
            ),
          ),
          Flexible(
            flex: 3,
            child: Container(
              constraints: BoxConstraints(maxHeight: 50),
              margin: EdgeInsets.only(bottom: 22, left: 40, right: 40),
              child: ButtonTheme(
                shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(30)),
                child: FlatButton(
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  color: Colors.white,
                  onPressed: () => {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => TelaUsuario()))
                  },
                  child: Stack(children: <Widget>[
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        child: Image.asset(
                          'images/Tela_Login/balao.png',
                          height: 19,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Text(
                        'ENTRAR COM NÚMERO DE TELEFONE',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.grey[700]),
                      ),
                    ),
                  ]),
                ),
              ),
            ),
          ),
          Flexible(
            flex: 1,
            fit: FlexFit.tight,
            child: RichText(
              text: TextSpan(
                style: TextStyle(
                    fontSize: 17,
                    fontFamily: "Arial",
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
                children: [
                  TextSpan(
                      text: 'Problemas para fazer o login?',
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ProblemaLogin()));
                        }),
                ],
              ),
            ),
          ),
        ]),
      ],
    );
  }
}
