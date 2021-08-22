import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_app/quiz/Components/body.dart';
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
        automaticallyImplyLeading: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            _controller.resetTheQnNum();
            Navigator.pop(context, false);
            // _controller.nextQuestion();
            // Navigator.pop(context, false);
          },
        ),
      ),
      body: Body(),
    );
  }
}

//onPressed: _controller.nextQuestion
