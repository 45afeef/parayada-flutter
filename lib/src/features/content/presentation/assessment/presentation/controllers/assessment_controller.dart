import 'dart:async';

import 'package:flutter/material.dart';

import '../../../../../../core/app_export.dart';
import '../../data/repositories/dummy_repo.dart';
import '../../domain/assessment.dart';
import '../../domain/assessment_item.dart';
import '../../domain/repositories/assessment_repository.dart';

class AssessmentController extends GetxController {
  static AssessmentController get call => Get.find();

  final AssessmentRepository _repo = DummyAssessmentRepo();

  /// AssessmentResult class will handle all the data storing related tasks in cache or memory
  /// This will collect and update the user input and time taken by each question, in
  /// AssessmentItemResponse object
  Rx<AssessmentResult> assessmentResult = AssessmentResult().obs;
  Rx<Assessment> assessment = Assessment.empty().obs;

  /// Stores the current question index. this helps in managing the state and context
  Rx<int> currentQuestionIndex = (-1).obs;

  Timer? _timer;

  // Update the current question index and start time
  set currentQuestion(int index) => currentQuestionIndex.value = index;

  String get timeSpentOnCurrentQuestion =>
      _getTimeSpentOnQuestion(currentQuestionIndex.value);

  bool get isExamStarted => currentQuestionIndex.value != -1;

  bool get isExamOngoing =>
      currentQuestionIndex.value >= 0 &&
      currentQuestionIndex.value < assessment.value.items.length;

  void startExam() {
    if (assessment.value == Assessment.empty()) return;

    currentQuestionIndex.value = 0;

    // Start or reset the timer when the exam starts
    _timer?.cancel();
    _timer = Timer.periodic(1.seconds, (_) => _updateElapsedTime());
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
    if (assessmentResult.value.studentResponse
        .containsKey(currentQuestionIndex.value)) {
      assessmentResult.value.studentResponse[currentQuestionIndex.value]!
          .incrementTimeTaken(timeSpent * 1000);
    } else {
      AssessmentItemResponse response =
          AssessmentItemResponse(timeTakenInMillisecond: timeSpent * 1000);
      assessmentResult.value
          .setItemResponse(currentQuestionIndex.value, response);
    }
  }

  void handleStudentResponse(dynamic response, BuildContext context) {
    assessmentResult.value.studentResponse[currentQuestionIndex.value]!
        .updateResponse(response.toString());

    Get.closeAllSnackbars();
    Get.snackbar('Selected Answer is', response.toString());

    assessmentResult.refresh(); // Notify listeners about the change
  }

  String? getSelectionFor(AssessmentItem item) {
    final index = assessment.value.items.indexOf(item);

    return assessmentResult.value.studentResponse[index]?.studentAnswer;
  }

  String _getTimeSpentOnQuestion(int questionIndex) {
    // Return the total time spent on a specific question

    int seconds = assessmentResult
            .value.studentResponse[questionIndex]?.timeTakenInMillisecond ??
        0;

    return seconds.toReadableTimeDelta(pattern: 'm:s');
  }

  Future<Assessment> fetchAssessment() async {
    Assessment response = await _repo.getAssessment(1);

    assessment.value = response;

    return response;
  }

  @override
  void onClose() {
    stopExam();

    super.onClose();
  }

  void stopExam() {
    _timer?.cancel(); // Cancel the timer to prevent memory leaks

    // reset all variables
    assessmentResult = AssessmentResult().obs;
    currentQuestionIndex.value = -1;
  }
}
