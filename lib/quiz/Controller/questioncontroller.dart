import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_app/quiz/Components/questions.dart';
import 'package:flutter_app/quiz/screens/score_screen.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';

class QuestionController extends GetxController
    with SingleGetTickerProviderMixin {
  late PageController _pageController;

  PageController get pageController => this._pageController;

  List<Question> _questions = sampleData
      .map(
        (question) => Question(
          id: question['id'],
          question: question['question'],
          options: question['options'],
          answer: question['answer_index'],
        ),
      )
      .toList();

  List<Question> get questions => this._questions;

  bool _isAnswered = false;

  bool get isAnswered => this._isAnswered;

  late int _correctAns;

  int get correctAns => this._correctAns;

  late int _selectedAns;

  int get selectedAns => this._selectedAns;

  RxInt _questionNumber = 1.obs;

  RxInt get questionNumber => this._questionNumber;

  late int _numOfCorrectAns = 0;

  int get numOfCorrectAns => this._numOfCorrectAns;

  //  get updateTheQnNum => null;

  @override
  void onInit() {
    _pageController = PageController();
    update();
    super.onInit();
  }

  // void resetQuestionNumber() => _questionNumber.value = 1;

  //Called just b4 the controller is deleted from the memory
  @override
  void onClose() {
    super.onClose();
    _pageController.dispose();
  }

  void checkAns(Question question, int selectedIndex) {
    _isAnswered = true;
    _correctAns = question.answer;
    _selectedAns = selectedIndex;
    if (_correctAns == _selectedAns) _numOfCorrectAns++;

    update();

    Future.delayed(Duration(seconds: 1), () {
      nextQuestion();
    });
  }

  void updateTheQnNum(int index) {
    _questionNumber.value = index + 1;
  }

  void nextQuestion() {
    if (_questionNumber.value != 5) {
      _isAnswered = false;
      _pageController.nextPage(
          duration: Duration(milliseconds: 150), curve: Curves.ease);
    } else {
      Get.to(ScoreScreen(
        key: Get.key,
      ));
    }
  }

  List<Question> generateQuestion() {
    var list = _questions;
    final _random = new Random();

    List<Question> subList = [];
    for (int i = 0; i < 5; i++) {
      var element = list[_random.nextInt(list.length)];
      subList.add(element);
      list.remove(element);
    }
    // print('sublist::${subList[3].answer}');
    return subList;
  }

  void resetTheQnNum() {
    _questionNumber.value = 1;
  }

  void refreshState() {
    _questionNumber.value = 1;
    _numOfCorrectAns = 0;
    _selectedAns = 0;
    _correctAns = 0;
    _isAnswered = false;
    //Get.to(ScoreScreen());
    // if (_questionNumber.value != 5) {
    //   _isAnswered = false;
    //   _pageController.nextPage(
    //       duration: Duration(milliseconds: 100), curve: Curves.ease);
    // } else {
    //   Get.to(ScoreScreen(
    //     key: Get.key,
    //   ));
    // }
    // nextQuestion();
  }
}
