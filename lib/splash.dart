import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      color: Colors.blue,
      home: new Splash(),
    );
  }
}

class Splash extends StatefulWidget {
  @override
  SplashState createState() => new SplashState();
}

class SplashState extends State<Splash> {
  Future checkFirstSeen() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool _seen = (prefs.getBool('seen') ?? false);

    if (_seen) {
      Navigator.pushReplacementNamed(context,'/home');
    } else {
      await prefs.setBool('seen', true);
      Navigator.pushReplacementNamed(context,'/starter');
    }
  }

  @override
  void initState() {
    super.initState();
    new Timer(new Duration(milliseconds: 5000), () {
      checkFirstSeen();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Material(
          child: Container(
      decoration: BoxDecoration(
      image:DecorationImage(image:AssetImage('assets/loading.gif'),
      fit:BoxFit.cover)
      ),
      child:Container(margin:EdgeInsets.only(top:565,left: 35),child:Row(crossAxisAlignment: CrossAxisAlignment.start,children:[Text('We Are Loading Your Goals',style: TextStyle(fontFamily:'Pixel',color: Colors.white,fontSize:15)),SpinKitThreeBounce(color:Colors.white,size:10)])
      )),
    );
  }
}
