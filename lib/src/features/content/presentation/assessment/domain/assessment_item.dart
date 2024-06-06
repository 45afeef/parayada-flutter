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
