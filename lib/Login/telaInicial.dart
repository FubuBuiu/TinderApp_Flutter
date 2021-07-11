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
    final size = MediaQuery.of(context).size;
    final heightScreen = size.height - heightNotificationBar;
    final heightButton = heightScreen * .06;
    final textSizeButton = heightButton * .31;
    final sizeIconButton = heightButton * .35;
    TextStyle defaultStyle =
        TextStyle(color: Colors.white, fontWeight: FontWeight.bold);
    TextStyle linktStyle = TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
        decoration: TextDecoration.underline);

    return Scaffold(
      body: Container(
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
              width: size.width,
              height: heightScreen,
              child: Column(
                children: [
                  Container(
                      height: heightScreen * .6,
                      // alignment: Alignment.center,
                      // color: Colors.black,
                      child: new SvgPicture.asset(
                        "assets/svg/logo_Tinder.svg",
                        color: Colors.white,
                      ),
                      width: (heightScreen * .50) * .40),
                  Expanded(
                    child: Container(
                      width: size.width,
                      padding: new EdgeInsets.symmetric(
                          horizontal: size.width * .04),
                      child: Column(
                        children: <Widget>[
                          SizedBox(
                            child: FittedBox(
                              child: RichText(
                                textAlign: TextAlign.center,
                                text: TextSpan(
                                  style: defaultStyle,
                                  children: [
                                    TextSpan(
                                        text:
                                            "Ao tocar em entrar, você concorda com os nossos\n "),
                                    TextSpan(
                                        text: "Termos",
                                        style: linktStyle,
                                        recognizer: TapGestureRecognizer()
                                          ..onTap = () {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (_) => Termos()));
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
                                                    builder: (_) =>
                                                        PoliticaPrivacidade()));
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
                                                    builder: (_) =>
                                                        PoliticaCookies()));
                                          }),
                                    TextSpan(text: "."),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: size.height * .02,
                          ),
                          buttonLogin(
                            heightButton,
                            "assets/svg/googleIcon.svg",
                            sizeIconButton,
                            "ENTRAR COM O GOOGLE",
                            textSizeButton,
                            () {
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (_) => TelaUsuario()));
                            },
                          ),
                          SizedBox(
                            height: size.height * .02,
                          ),
                          buttonLogin(
                            heightButton,
                            "assets/svg/facebookIcon.svg",
                            sizeIconButton,
                            "ENTRAR COM O FACEBOOK",
                            textSizeButton,
                            () {
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (_) => TelaUsuario()));
                            },
                          ),
                          SizedBox(
                            height: size.height * .02,
                          ),
                          buttonLogin(
                            heightButton,
                            "assets/svg/balao.svg",
                            sizeIconButton,
                            "ENTRAR COM NÚMERO DE TELEFONE",
                            textSizeButton,
                            () {
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (_) => TelaUsuario()));
                            },
                          ),
                          Expanded(
                              child: Container(
                            alignment: Alignment.center,
                            child: GestureDetector(
                              child: Text(
                                "Problemas para fazero login?",
                                style: TextStyle(
                                    fontSize: size.width * .038,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => ProblemaLogin()));
                              },
                            ),
                          ))
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget buttonLogin(height, icon, sizeIcon, text, textSize, Function action) {
  return SizedBox(
    // width: width,
    height: height,
    child: ButtonTheme(
      shape: new RoundedRectangleBorder(
          borderRadius: new BorderRadius.circular(100)),
      child: FlatButton(
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        color: Colors.white,
        onPressed: action,
        child: Stack(
          children: <Widget>[
            Align(
              alignment: Alignment.centerLeft,
              child: SvgPicture.asset(
                icon,
                height: sizeIcon,
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Text(
                text,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.grey[700],
                    fontSize: textSize),
                textAlign: TextAlign.center,
              ),
            )
          ],
        ),
      ),
    ),
  );
}
