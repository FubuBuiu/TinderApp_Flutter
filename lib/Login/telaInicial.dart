import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tinder_app/Login/problemasComLogin.dart';
import 'package:tinder_app/Login/termos.dart';
import 'package:tinder_app/Login/politicaPrivacidade.dart';
import 'package:tinder_app/Login/politicaCookies.dart';
import 'package:tinder_app/Usuario/telaUsuario.dart';

class TelaInicial extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final heightNotificationBar = MediaQuery.of(context).padding.top;
    final widthScreen = MediaQuery.of(context).size.width;
    final heightScreen =
        MediaQuery.of(context).size.height - heightNotificationBar;
    final fontSize = (heightScreen * .1) * .165;
    final heightButton = heightScreen * .06;
    final widhtButton = widthScreen * .86;
    final fontSizeButtons = heightButton * .31;
    final sizeIconButton = heightButton * .35;
    TextStyle defaultStyle = TextStyle(
        color: Colors.white, fontSize: fontSize, fontWeight: FontWeight.bold);
    TextStyle linktStyle = TextStyle(
        color: Colors.white,
        fontSize: fontSize,
        fontWeight: FontWeight.bold,
        decoration: TextDecoration.underline);
    return Container(
      margin: EdgeInsets.only(top: heightNotificationBar),
      child: Stack(
        children: <Widget>[
          Container(
            height: heightScreen,
            decoration: BoxDecoration(
              color: Color(0xFFFD297B),
            ),
          ),
          Container(
            height: heightScreen,
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
          Container(
            width: widthScreen,
            height: heightScreen,
            child: Column(children: [
              Container(
                  height: heightScreen * .58,
                  // alignment: Alignment.center,
                  // color: Colors.black,
                  child: new SvgPicture.asset(
                    "images/Tela_Login/logo_Tinder.svg",
                    color: Colors.white,
                  ),
                  width: (heightScreen * .50) * .40),
              Container(
                // padding:
                //     new EdgeInsets.symmetric(horizontal: widthScreen * .14),
                width: widthScreen,
                height: heightScreen * .1,
                child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(style: defaultStyle, children: [
                    TextSpan(
                        text:
                            "Ao tocar em entrar, você concorda com os nossos\n "),
                    TextSpan(
                        text: "Termos",
                        style: linktStyle,
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (_) => Termos()));
                          }),
                    TextSpan(
                        text:
                            ". Saiba como processamos seus dados em\n nossa "),
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
              SizedBox(
                width: widhtButton,
                height: heightButton,
                child: ButtonTheme(
                  shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(100)),
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
                          height: sizeIconButton,
                        ),
                      ),
                      Align(
                          alignment: Alignment.center,
                          child: Text(
                            "ENTRAR COM O GOOGLE",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.grey[700],
                                fontSize: fontSizeButtons),
                            textAlign: TextAlign.center,
                          ))
                    ]),
                  ),
                ),
              ),
              SizedBox(
                height: heightScreen * .02,
              ),
              SizedBox(
                width: widhtButton,
                height: heightButton,
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
                            height: sizeIconButton,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Text(
                          'ENTRAR COM O FACEBOOK',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.grey[700],
                              fontSize: fontSizeButtons),
                        ),
                      ),
                    ]),
                  ),
                ),
              ),
              SizedBox(
                height: heightScreen * .02,
              ),
              SizedBox(
                width: widhtButton,
                height: heightButton,
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
                          child: SvgPicture.asset(
                            'images/Tela_Login/balao_1.svg',
                            height: sizeIconButton,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Text(
                          'ENTRAR COM NÚMERO DE TELEFONE',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.grey[700],
                              fontSize: fontSizeButtons),
                        ),
                      ),
                    ]),
                  ),
                ),
              ),
              Container(
                // color: Colors.black,
                alignment: Alignment.center,
                height: heightScreen * .1,
                child: RichText(
                  text: TextSpan(
                    style: TextStyle(
                        fontSize: (heightScreen * .08) * .25,
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
          ),
        ],
      ),
    );
  }
}
