import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_app/quiz/body.dart';
import 'package:flutter_app/quiz/Controller/questioncontroller.dart';
import 'package:get/get.dart';

class QuizScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _QuizScreen();
}

class _QuizScreen extends State<QuizScreen> {
  @override
  Widget build(BuildContext context) {
    var _controller = Get.put(QuestionController());
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Quiz',
        ),
        centerTitle: true,
        backgroundColor: Colors.green,
        actions: [],
      ),
      body: Body(),
    );
  }
}

//onPressed: _controller.nextQuestion
