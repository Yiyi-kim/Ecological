import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_app/Recycle/Components/go_back_button.dart';
import 'package:flutter_app/game.dart';
import 'package:flutter_app/main.dart';
import 'package:flutter_app/mystateful_widget.dart';
import 'package:flutter_app/quiz/Controller/questioncontroller.dart';
import 'package:get/get.dart';

class ScoreScreen extends StatelessWidget {
  const ScoreScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    QuestionController _qnController = Get.put(QuestionController());
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Column(
            children: [
              SizedBox(
                height: 90,
              ),
              Text('Score',
                  style: Theme.of(context)
                      .textTheme
                      .headline3!
                      .copyWith(color: Colors.green)),
              SizedBox(height: 20),
              Text("${_qnController.numOfCorrectAns * 10}/${50}",
                  style: Theme.of(context).textTheme.headline4),
              SizedBox(height: 50),
              Image.asset(
                'assets/images/celebration.png',
                width: double.infinity,
                height: 220,
              ),
              SizedBox(
                width: double.infinity,
                height: 70,
              ),
              GoBackButton(
                () {
                  _qnController.refreshState();
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (_) => MyStatefulWidget()));
                },
                Text(
                  "Go Back",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
