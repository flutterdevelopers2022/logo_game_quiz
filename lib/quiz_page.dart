import 'package:flutter/material.dart';

class Quiz_Page extends StatefulWidget {
  const Quiz_Page({Key? key}) : super(key: key);

  @override
  State<Quiz_Page> createState() => _Quiz_PageState();
}

class _Quiz_PageState extends State<Quiz_Page> {
  int cur_level = 0;

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
      body: PageView.builder(itemCount: 10,
        controller: PageController(initialPage: cur_level),
        itemBuilder: (context, index) {
          return Container(child: Column(children: [



          ],),);
        },
      ),
    );
  }
}
