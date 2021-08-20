import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_app/quiz/quiz_screen.dart';
import 'package:get/get_core/src/get_main.dart';

import 'Controller/questioncontroller.dart';

class Quiz extends StatefulWidget {
  //final _questionController = Get.put(QuestionController());
  Quiz({Key? key}) : super(key: key);

  @override
  _QuizState createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  //final _questionController = Get.put(QuestionController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        centerTitle: true,
        title: Text(
          'Quiz',
          style: TextStyle(fontFamily: 'Itim'),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 30,
          ),
          SizedBox(
            width: double.infinity,
            height: 50,
          ),
          Text(
            'Global Warming Quiz',
            style: TextStyle(
              fontFamily: 'Itim',
              fontSize: 30,
            ),
          ),
          SizedBox(
            width: double.infinity,
            height: 70,
          ),
          Image.asset(
            'assets/images/startquiz-removebg-preview.png',
            width: double.infinity,
            height: 220,
          ),
          SizedBox(
            width: double.infinity,
            height: 70,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Colors.green,
            ),
            onPressed: () {
              //_questionController.resetQuestionNumber();
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => QuizScreen()));
            },
            child: Container(
              width: 300,
              height: 50,
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  'Start now',
                  style: TextStyle(
                    fontFamily: 'Itim',
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
