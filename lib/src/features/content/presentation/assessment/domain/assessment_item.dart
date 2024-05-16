import '../../../domain/content.dart';

abstract class AssessmentItem extends Content {
  String question;
  double score;
  DateTime startTime;
  DateTime endTime;

  // Abstract methods that subclasses must implement
  void start() {
    startTime = DateTime.now();
    // Additional logic specific to starting an assessment item
  }

  void end() {
    endTime = DateTime.now();
    // Additional logic specific to ending an assessment item
  }
  
  void calculateScore();

  AssessmentItem(
    this.question,
    this.score,
    this.startTime,
    this.endTime,
  );
}

abstract class ClosedEndedAssessmentItem extends AssessmentItem {
  ClosedEndedAssessmentItem(
    super.question,
    super.score,
    super.startTime,
    super.endTime,
  );
}

abstract class OpenEndedAssessmentItem extends AssessmentItem {
  OpenEndedAssessmentItem(
    super.question,
    super.score,
    super.startTime,
    super.endTime,
  );
}
