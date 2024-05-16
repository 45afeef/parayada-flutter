import '../../../domain/content.dart';

abstract class AssessmentItem extends Content {
  String question;
  double? score;
  DateTime? startTime;

  DateTime? endTime;
  // Abstract methods that subclasses must implement
  void started() {
    startTime = DateTime.now();
    // Additional logic specific to starting an assessment item
  }

  void ended() {
    endTime = DateTime.now();
    // Additional logic specific to ending an assessment item
  }

  double calculateScore();

  // Method to update the score after calculation
  void updateScore(double calculatedScore) {
    score = calculatedScore;
  }

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
