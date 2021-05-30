import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rive/rive.dart';
import 'package:flutter/services.dart';
import 'dart:async';
import 'package:tinder_app/Login/telaInicial.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: SplashScreen());
  }
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {
  final riveFile = 'animation/splashscreen_animation.riv';
  Artboard _artboard;

  void _loadRiveFile() async {
    final bytes = await rootBundle.load(riveFile);
    final file = RiveFile();

    if (file.import(bytes)) {
      setState(() => _artboard = file.mainArtboard
        ..addController(
          SimpleAnimation('Splash Screen'),
        ));
    }
  }

  changeStatusBar() {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light.copyWith(
      statusBarColor: Colors.black,
    ));
  }

  @override
  void initState() {
    _loadRiveFile();
    super.initState();
    changeStatusBar();
    Timer(Duration(milliseconds: 3500), () {
      Navigator.push(context, MaterialPageRoute(builder: (_) => TelaInicial()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: <Widget>[
        _artboard != null
            ? Rive(
                artboard: _artboard,
                fit: BoxFit.cover,
              )
            : Container(),
        Container(
          margin: EdgeInsets.only(bottom: 13, left: 13),
          child: ClipRect(
            child: SizedOverflowBox(
              size: Size(149, 50),
              child: SlideTransition(
                position: Tween<Offset>(begin: Offset.zero, end: Offset(-2, 0))
                    .animate(CurvedAnimation(
                        parent: AnimationController(
                            vsync: this, duration: Duration(seconds: 2))
                          ..forward(),
                        curve: Interval(0.400, 0.600, curve: Curves.easeIn))),
                child: SvgPicture.asset(
                  'images/SplashScreen/nome_Tinder.svg',
                  height: 45,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
