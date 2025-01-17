import '../../../domain/content.dart';

/// TODO - Need to measure the effectiveness of the assessment item
/// http://www.schreyerinstitute.psu.edu/pdf/GuideToItemAnalysis.pdf
abstract class AssessmentItem extends Content {
  String question;

  AssessmentItem({required this.question});
}

abstract class ClosedEndedAssessmentItem extends AssessmentItem {
  ClosedEndedAssessmentItem({
    required super.question,
  });
}

abstract class OpenEndedAssessmentItem extends AssessmentItem {
  OpenEndedAssessmentItem({
    required super.question,
  });
}

/// This class [AssessmentItemResponse] is a common result class for all [AssessmentItem]s
/// We assume [currectAnswer] only usefull and avaialble for [ClosedEndedAssessmentItem]
class AssessmentItemResponse {
  int timeTakenInMillisecond;
  String? studentAnswer;
  String? currectAnswer;

  /// True only if the studentAnswer is atleast 90% similar to currentAnswer
  bool? isCurrect;
  
  double? markScored;

  AssessmentItemResponse({
    required this.timeTakenInMillisecond,
    this.studentAnswer,
    this.markScored,
    this.currectAnswer,
    this.isCurrect,
  });

  void incrementTimeTaken(int increment) {
    timeTakenInMillisecond += increment;
  }

  void updateResponse(String response) {
    studentAnswer = response.toString();
  }
}
