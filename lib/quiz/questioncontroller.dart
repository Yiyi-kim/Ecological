import 'dart:math';

import 'package:flutter/widgets.dart';
import 'package:flutter_app/quiz/questions.dart';
import 'package:flutter_app/quiz/scorescreen.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';

class QuestionController extends GetxController
    with SingleGetTickerProviderMixin {
  late PageController _pageController;

  PageController get pageController => this._pageController; // ke tha error nis

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
          duration: Duration(milliseconds: 120), curve: Curves.ease);
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
}
