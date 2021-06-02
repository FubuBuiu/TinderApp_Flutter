import 'package:flutter/material.dart';
import 'package:tinder_app/Login/entrarComEmail.dart';

class ProblemaLogin extends StatefulWidget {
  @override
  _ProblemaLogin createState() => _ProblemaLogin();
}

getSizes(GlobalKey key) {
  final RenderBox renderBoxRed = key.currentContext.findRenderObject();
  final size = renderBoxRed.size;
  return size.height;
}

class _ProblemaLogin extends State<ProblemaLogin> {
  @override
  Widget build(BuildContext context) {
    final heightNotificationBar = MediaQuery.of(context).padding.top;
    final widthScreen = MediaQuery.of(context).size.width;
    final heightScreen = MediaQuery.of(context).size.height -
        heightNotificationBar -
        AppBar().preferredSize.height;
    GlobalKey myKey = GlobalKey();

    return Scaffold(
      key: myKey,
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(
          color: Colors.grey[400],
        ),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: heightScreen * .05),
            child: Text(
              'Recuperação de \nconta',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.grey[800], fontSize: heightScreen * .052),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: heightScreen * .05),
            child: Text(
              'Mudou seu número de telefone \nou perdeu acesso à sua conta do \nFacebook? Podemos ajudá-lo a\n entrar com o seu email.',
              textAlign: TextAlign.center,
              style:
                  TextStyle(color: Colors.grey, fontSize: heightScreen * .027),
            ),
          ),
          Container(
            height: heightScreen * .07,
            width: widthScreen * .82,
            margin: EdgeInsets.only(top: heightScreen * .07),
            child: RaisedButton(
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100)),
              padding: EdgeInsets.all(0),
              child: Ink(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.centerRight,
                    end: Alignment.centerLeft,
                    stops: [0.1, 0.4, 0.8],
                    colors: [
                      Color(0xFFFF655B),
                      Color.fromARGB(255, 255, 88, 100),
                      Color(0xFFFD297B)
                    ],
                  ),
                  borderRadius: BorderRadius.circular(100),
                ),
                child: Container(
                  alignment: Alignment.center,
                  child: Text(
                    'ENTRAR COM E-MAIL',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: (heightScreen * .07) * .35),
                  ),
                ),
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => EntrarComEmail()));
              },
            ),
          ),
        ]),
      ),
    );
  }
}
