import 'package:flutter/material.dart';

class EntrarComEmail extends StatefulWidget {
  @override
  _EntrarComEmail createState() => _EntrarComEmail();
}

class _EntrarComEmail extends State<EntrarComEmail> {
  TextEditingController _controllerUsuario = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final widthScreen = MediaQuery.of(context).size.width;
    final heightScreen = MediaQuery.of(context).size.height -
        AppBar().preferredSize.height -
        MediaQuery.of(context).padding.top;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(
          color: Colors.grey[400],
        ),
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: widthScreen * .1),
        width: MediaQuery.of(context).size.width,
        child: Column(children: <Widget>[
          Container(
            margin: EdgeInsets.only(
                top: heightScreen * .02, bottom: heightScreen * .07),
            alignment: Alignment.centerLeft,
            child: Text(
              'Entrar via e-mail',
              style: TextStyle(
                color: Colors.grey[800],
                fontSize: heightScreen * .055,
              ),
            ),
          ),
          new Theme(
            data: new ThemeData(primaryColor: Colors.red),
            child: TextField(
              controller: _controllerUsuario,
              autofocus: false,
              keyboardType: TextInputType.name,
              style: TextStyle(fontSize: heightScreen * .03),
              cursorColor: Colors.red,
              decoration: new InputDecoration(
                floatingLabelBehavior: FloatingLabelBehavior.never,
                hintText: 'Seu e-mail é',
                border: new UnderlineInputBorder(
                  borderSide: new BorderSide(color: Colors.red),
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(
                top: heightScreen * .01, bottom: heightScreen * .06),
            child: Text(
              'Enviaremos um link por e-mail que permitirá o login instantâneo',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 14,
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            // constraints: BoxConstraints(maxHeight: 50),
            // margin: EdgeInsets.only(right: 40, left: 40),
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
                  padding: EdgeInsets.only(top: 10, bottom: 10),
                  alignment: Alignment.center,
                  child: Text(
                    'ENVIAR E-MAIL',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
              ),
              onPressed: () {
                // Navigator.push(context,
                //     MaterialPageRoute(builder: (context) => EntrarComEmail()));
              },
            ),
          ),
        ]),
      ),
    );
  }
}
