import 'package:flutter/material.dart';
import 'package:tinder_app/Login/entrarComEmail.dart';

class ProblemaLogin extends StatefulWidget {
  @override
  _ProblemaLogin createState() => _ProblemaLogin();
}

class _ProblemaLogin extends State<ProblemaLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(
          color: Colors.grey[400],
        ),
      ),
      body: Container(
        color: Colors.white,
        padding: EdgeInsets.only(top: 50),
        width: MediaQuery.of(context).size.width,
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(bottom: 40),
                child: Text(
                  'Recuperação de \nconta',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.grey[800], fontSize: 35),
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 60),
                child: Text(
                  'Mudou seu número de telefone \nou perdeu acesso à sua conta do \nFacebook? Podemos ajudá-lo a\n entrar com o seu email.',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.grey, fontSize: 18),
                ),
              ),
              Container(
                constraints: BoxConstraints(maxHeight: 50),
                margin: EdgeInsets.only(right: 40, left: 40),
                child: RaisedButton(
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)),
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
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Container(
                      alignment: Alignment.center,
                      child: Text(
                        'ENTRAR COM E-MAIL',
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => EntrarComEmail()));
                  },
                ),
              ),
            ]),
      ),
    );
  }
}
