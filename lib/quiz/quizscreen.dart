import 'package:flutter/material.dart';
import 'package:flutter_app/quiz/body.dart';
import 'package:flutter_app/quiz/questioncontroller.dart';
import 'package:get/get.dart';

class QuizScreen extends StatelessWidget {
  const QuizScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _controller = Get.put(QuestionController());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        actions: [],
      ),
      body: Body(),
    );
  }
}

//onPressed: _controller.nextQuestion
