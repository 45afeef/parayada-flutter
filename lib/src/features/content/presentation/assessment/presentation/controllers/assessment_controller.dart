import 'dart:async';

import 'package:flutter/material.dart';

import '../../../../../../core/app_export.dart';
import '../../domain/assessment.dart';
import '../../domain/closed_ended/flashcard.dart';
import '../../domain/closed_ended/mcq.dart';
import '../../domain/closed_ended/true_or_false.dart';
import '../../domain/open_ended/one_word.dart';

class AssessmentController extends GetxController {
  /// [userAnswer] is a hashmap of user selected answer, it can be predefined in case of assessment
  /// is closed type, or it will be user generated or typed answer.
  var userAnswer = <int, dynamic>{};

  /// [totalTimeSpent] will count every single second spent on the question. This actually counts 
  /// the total seconds that the respective questions shown on the screen
  var totalTimeSpent = <int, int>{}.obs;

  /// [responseTimeTaken] record the time spent by the user on the respective question till his/her
  /// final attempt. Ff the question don't allow multi attempt, then the time taken for first 
  /// attempt will be recorded.
  var responseTimeTaken = <int, int>{}.obs;

  /// Stores the current question index. this helps in managing the state and context
  var currentQuestionIndex = 0;

  Timer? _timer;

  void startExam() {
    currentQuestionIndex = 0;

    // Start or reset the timer when the exam starts
    _timer?.cancel();
    _timer = Timer.periodic(
        const Duration(seconds: 1), (Timer t) => _updateElapsedTime());
  }

  void setCurrentQuestion(int questionIndex) {
    // Update the current question index and start time
    currentQuestionIndex = questionIndex;
  }

  String getTimeSpentOnQuestion(int questionIndex) {
    // Return the total time spent on a specific question

    int seconds = totalTimeSpent[questionIndex] ?? 0;

    int minutes = seconds ~/ 60;
    int remainingSeconds = seconds % 60;
    String formattedTime =
        '${minutes.toString().padLeft(2, '0')}:${remainingSeconds.toString().padLeft(2, '0')}';
    return formattedTime;
  }

  /// IMPROVEMENT APPRECIATED.
  /// WHY ?
  /// why we use [timeSpent] as 1?
  /// the private method [_updateElapsedTime] is invoked by the timer with an interval of 1 second
  /// so the extra time spent on current question will always be 1 second more than the previous
  ///
  /// We are not minimizing the interval, because we don't want to compramize performance.
  /// Hope this don't affect the quality of assessmentItem level student analytics
  ///
  /// IGNORED
  /// Current method of timer will miscount the time spent. because we are using only one timer and
  /// not reseting it for each questions.
  /// Hope this don't affect the quality of assessmentItem level student analytics
  void _updateElapsedTime() {
    // Calculate the time spent on the current question
    var timeSpent = 1;

    // Update the total time for the current question
    if (totalTimeSpent.containsKey(currentQuestionIndex)) {
      totalTimeSpent[currentQuestionIndex] =
          totalTimeSpent[currentQuestionIndex]! + timeSpent;
    } else {
      totalTimeSpent[currentQuestionIndex] = timeSpent;
    }

    // This will trigger the Obx widget to rebuild every second
    totalTimeSpent.refresh();
  }

  void handleStudentResponse(response, BuildContext context) {
    userAnswer[currentQuestionIndex] = response;
    ScaffoldMessenger.of(context).clearSnackBars();

    ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text('User selected : $response')));
  }

  @override
  void onClose() {
    _timer?.cancel(); // Cancel the timer to prevent memory leaks

    // reset all variables
    totalTimeSpent = <int, int>{}.obs;
    responseTimeTaken = <int, int>{}.obs;
    currentQuestionIndex = -1;

    super.onClose();
  }

  static AssessmentController get call => Get.find();

  final Assessment assessment = Assessment(
    name: 'name',
    assessmentType: AssessmentType.summative,
    items: [
      FlashCard(
          question: 'This is the first question in first flash card',
          explanation: 'explanation'),
      MCQ(
          question: 'What is the capital of France?',
          options: ['Paris', 'Rome', 'Berlin', 'Madrid']),
      MCQ(
          question: 'Which element has the chemical symbol O?',
          options: ['Oxygen', 'Gold', 'Iron', 'Helium']),
      FlashCard(
          question: 'question in Second flash card',
          explanation: 'explanation'),
      MCQ(question: 'Who wrote Romeo and Juliet?', options: [
        'William Shakespeare',
        'Charles Dickens',
        'Jane Austen',
        'Mark Twain'
      ]),
      OneWordQuestion(
          question: 'Who is commonly known as the father of India?'),
      MCQ(
          question: 'What is the largest planet in our solar system?',
          options: ['Jupiter', 'Mars', 'Earth', 'Venus']),
      MCQ(
          question: 'What is the boiling point of water?',
          options: ['100°C', '90°C', '120°C', '80°C']),
      MCQ(question: 'Who painted the Mona Lisa?', options: [
        'Leonardo da Vinci',
        'Vincent Van Gogh',
        'Pablo Picasso',
        'Claude Monet'
      ]),
      MCQ(
          question: 'What is the currency of Japan?',
          options: ['Yen', 'Dollar', 'Euro', 'Won']),
      MCQ(
          question: 'How many continents are there on Earth?',
          options: ['Seven', 'Six', 'Five', 'Eight']),
      MCQ(
          question: 'What is the main ingredient in sushi?',
          options: ['Rice', 'Fish', 'Cheese', 'Beef']),
      TrueOrFalse(
          question: 'The only true or false question',
          options: ["more", "wow"]),
      MCQ(
          question: 'What is the hardest natural substance?',
          options: ['Diamond', 'Gold', 'Iron', 'Quartz'])
    ],
  );
}
