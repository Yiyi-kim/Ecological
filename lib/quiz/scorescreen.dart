import 'package:flutter/material.dart';
import 'package:flutter_app/game.dart';
import 'package:flutter_app/main.dart';
import 'package:flutter_app/quiz/questioncontroller.dart';
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
                height: 70,
              ),
              Text('Score',
                  style: Theme.of(context)
                      .textTheme
                      .headline3!
                      .copyWith(color: Colors.green)),
              SizedBox(
                height: 30,
              ),
              Text("${_qnController.correctAns * 10}/${50}",
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
              ElevatedButton(
                style: ElevatedButton.styleFrom(primary: Colors.green),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MyApp()));
                  //the screen doesn't  blank anymore but the questions don't reload
                },
                child: Container(
                  width: 100,
                  height: 40,
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      'Back',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
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
