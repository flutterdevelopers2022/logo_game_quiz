import 'package:flutter/material.dart';
import 'package:logo_game_quiz/config.dart';


class LevelPage extends StatefulWidget {
  const LevelPage({Key? key}) : super(key: key);

  @override
  State<LevelPage> createState() => _LevelPageState();
}

class _LevelPageState extends State<LevelPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

  }
  @override
  Widget build(BuildContext context) {
    Config config = Config(context);
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
        body: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            return InkWell(onTap: () {
              Navigator.pushNamed(context, "/Level_status");
            },
              child: Container(
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.all(7),
                      alignment: Alignment.center,
                      height: config.tot_height * 0.12,
                      width: config.tot_height * 0.12,
                      decoration: BoxDecoration(
                          color: Color(0xff620707),
                          borderRadius: BorderRadius.circular(50)),
                      child: Text(
                        "5/40",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: (config.tot_height * 0.03),
                        ),
                      ),
                    ),
                    Expanded(flex: 6,
                      child: Column(
                        children: [
                          Text(
                            "Level 1",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: (config.tot_height * 0.03),
                            ),
                          ),
                          Container(width: double.infinity,
                            height: config.tot_height * 0.12,
                            child: Slider(
                              value: 10,
                              min: 0,
                              max: 100,
                              onChanged: (value) {},
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ));
  }
}
