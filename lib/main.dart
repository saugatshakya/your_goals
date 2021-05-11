import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart' as path_provider;
import 'package:yourgoals/aban/daban.dart';
import 'package:yourgoals/aban/laban.dart';
import 'package:yourgoals/aban/waban.dart';
import 'package:yourgoals/aban/maban.dart';
import 'package:yourgoals/aban/yaban.dart';
import 'package:yourgoals/comp/dcomp.dart';
import 'package:yourgoals/comp/wcomp.dart';
import 'package:yourgoals/comp/mcomp.dart';
import 'package:yourgoals/comp/ycomp.dart';
import 'package:yourgoals/comp/lcomp.dart';
import 'package:yourgoals/home.dart';
import 'package:yourgoals/intro.dart';
import 'package:yourgoals/monthly.dart';
import 'package:yourgoals/splash.dart';
import 'package:yourgoals/weekly.dart';
import 'package:yourgoals/life.dart';
import 'package:yourgoals/yearly.dart';
import 'package:yourgoals/data/goal.dart';
import 'package:yourgoals/achievement/achieve.dart';
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final appDocumentDirectory = await path_provider.getApplicationDocumentsDirectory();
  Hive.init(appDocumentDirectory.path);
  Hive.registerAdapter(GoalAdapter());
  await Hive.openBox('dcomp');
  await Hive.openBox('wcomp');
  await Hive.openBox('mcomp');
  await Hive.openBox('ycomp');
  await Hive.openBox('lcomp');
  runApp(MyApp(
  ));
}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Intro',
      home: Intro(),
      debugShowCheckedModeBanner: false,
      routes : {
        '/home' : (context) => Home(),
        '/starter' : (content) => Starter(),
        '/weekly' : (content) => Week(),
        '/monthly' : (content) => Month(),
        '/yearly' : (content) => Year(),
        '/life' : (content) => Life(),
        '/dcomp' : (content) => Dcomp(),
        '/wcomp' : (content) => Wcomp(),
        '/mcomp' : (content) => Mcomp(),
        '/ycomp' : (content) => Ycomp(),
        '/lcomp' : (content) => Lcomp(),
        '/daban' : (content) => Daban(),
        '/laban' : (content) => Laban(),
        '/waban' : (content) => Waban(),
        '/maban' : (content) => Maban(),  
        '/yaban' : (content) => Yaban(),          
        '/achieve': (content) => Achieve(),
       }
    );
  }
}

class Intro extends StatelessWidget {
  final i = true;
  @override
  Widget build(BuildContext context) {
    return Splash();
  }
}

