import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:logo_game_quiz/config.dart';
import 'package:logo_game_quiz/level_status.dart';
import 'package:logo_game_quiz/levelpage.dart';
import 'package:logo_game_quiz/quiz_page.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    systemNavigationBarColor: Colors.blue, // navigation bar color
    statusBarColor: Colors.black87, // status bar color
  ));

  runApp(MaterialApp(
   initialRoute: "/",
    routes: {
     '/':(context) => Home(),
     '/levelPage':(context) => LevelPage(),
      '/Level_status':(context) => Level_status(),
      '/Quiz_page':(context) => Quiz_Page()
    },
  ));
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Config.initImages();

  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SafeArea(
          child: Center(
        child: InkWell(onTap: () {
          Navigator.pushNamed(context, '/levelPage');
        },child: Container(width: 100,height: 100,
          alignment: Alignment.center,
          child: Text(
            "Play",
            style: TextStyle(color: Colors.white, fontSize: 30),
          ),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50), color: Colors.blue),
        ),),
      )),
    );
  }
}
