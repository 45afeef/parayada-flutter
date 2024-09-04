import 'dart:async';

import 'package:flutter/material.dart';
import 'package:parayada/src/features/content/presentation/assessment/data/repositories/dummy_repo.dart';
import 'package:parayada/src/features/content/presentation/assessment/domain/repositories/assessment_repository.dart';

import '../../../../../../core/app_export.dart';
import '../../domain/assessment.dart';
import '../../domain/assessment_item.dart';

class AssessmentController extends GetxController {
  static AssessmentController get call => Get.find();

  final AssessmentRepository _repo = DummyAssessmentRepo();

  /// AssessmentResult class will handle all the data storing related tasks in cache or memory
  /// This will collect and update the user input and time taken by each question, in
  /// AssessmentItemResponse object
  Rx<AssessmentResult> assessmentResult = AssessmentResult().obs;
  Rx<Assessment> assessment = Assessment.empty().obs;

  /// Stores the current question index. this helps in managing the state and context
  int currentQuestionIndex = 0;

  Timer? _timer;

  // Update the current question index and start time
  set currentQuestion(int index) => currentQuestionIndex = index;

  String get timeSpentOnCurrentQuestion =>
      _getTimeSpentOnQuestion(currentQuestionIndex);

  void startExam() {
    if (assessment.value == Assessment.empty()) return;

    currentQuestionIndex = 0;

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
        .containsKey(currentQuestionIndex)) {
      assessmentResult.value.studentResponse[currentQuestionIndex]!
          .incrementTimeTaken(timeSpent * 1000);
    } else {
      AssessmentItemResponse response =
          AssessmentItemResponse(timeTakenInMillisecond: timeSpent * 1000);
      assessmentResult.value.setItemResponse(currentQuestionIndex, response);
    }

    // This will trigger the Obx widget to rebuild every second
    assessmentResult.refresh();
  }

  void handleStudentResponse(dynamic response, BuildContext context) {
    assessmentResult.value.studentResponse[currentQuestionIndex]!
        .updateResponse(response.toString());

    Get.closeAllSnackbars();
    Get.snackbar('Selected Answer is', response.toString());

    assessmentResult.refresh(); // Notify listeners about the change
  }

  String? getSelectionFor(AssessmentItem item) {
    final index = assessment.value.items.indexOf(item);

    return assessmentResult.value.studentResponse[index]?.studentAnswer;
  }

  String formatedSeconds(int seconds) {
    seconds ~/= 1000;
    int minutes = seconds ~/ 60;
    int remainingSeconds = seconds % 60;

    String formattedTime =
        '${minutes.toString().padLeft(2, '0')}:${remainingSeconds.toString().padLeft(2, '0')}';
    return formattedTime;
  }

  String _getTimeSpentOnQuestion(int questionIndex) {
    // Return the total time spent on a specific question

    int seconds = assessmentResult
            .value.studentResponse[questionIndex]?.timeTakenInMillisecond ??
        0;

    return formatedSeconds(seconds);
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
    currentQuestionIndex = -1;
  }
}
