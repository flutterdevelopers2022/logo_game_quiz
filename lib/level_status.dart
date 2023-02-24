import 'package:flutter/material.dart';
import 'package:logo_game_quiz/config.dart';

class Level_status extends StatefulWidget {
  const Level_status({Key? key}) : super(key: key);

  @override
  State<Level_status> createState() => _Level_statusState();
}

class _Level_statusState extends State<Level_status> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Color(0xff0d45e0), Color(0xff4673f5)])),
        ),
        centerTitle: true,
        title: Text("Choose Level"),
      ),
      body: GridView.builder(
        itemCount: Config.Logo_list.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4, mainAxisSpacing: 5, crossAxisSpacing: 5),
        itemBuilder: (context, index) {
          return InkWell(onTap: () {
            Navigator.pushNamed(context, "/");
          },
            child: Container(
              alignment: Alignment.bottomLeft,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage("${Config.Logo_list[index]}"))),
              child: Baseline(
                  baseline: 0.10,
                  baselineType: TextBaseline.ideographic,
                  child: Icon(
                    Icons.check_circle,
                    color: Colors.green,
                  )),
            ),
          );
        },
      ),
    );
  }
}
