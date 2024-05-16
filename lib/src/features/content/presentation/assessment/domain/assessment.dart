import '../../../domain/content.dart';
import 'assessment_item.dart';

enum AssessmentType {
  screening,
  diagnostic,

  /// This type of assessment is ongoing and used to monitor student learning during the
  /// instructional process. It provides immediate feedback to both teachers and students, helping
  /// identify strengths and areas for improvement. Examples include quizzes, class discussions,
  /// and exit tickets.
  formative,

  /// These are typically administered at the end of a learning period, such as a semester
  /// or school year, to evaluate what students have learned. They measure a student’s mastery
  /// of the curriculum and often contribute to their final grade2.
  summative,

  /// Measures a student’s performance against a fixed set of criteria or learning standards3.
  criterionReferenced,

  /// Measures a student’s performance against all other students. uses percentile as measure.
  normReferenced,

  /// [ipsative] Compares a student’s current performance against their previous performances3.
  ipsative,
}

class Assessment extends Content {
  final String name;
  final AssessmentType assessmentType;
  final List<AssessmentItem> items;
  Map<String, dynamic> performanceResults;

  Assessment({
    required this.name,
    required this.assessmentType,
    required this.items,
    this.performanceResults = const {},
  });

  // Method to calculate and store performance after assessment completion
  void calculatePerformance() {
    performanceResults = {
      'totalScore': getTotalScore(),
      'averageTimePerItem': getAverageTimePerItem(),
      // Other performance metrics
    };
  }

  // Implement these methods to get data from AssessmentItems
  int getTotalScore() {
    // TODO - complete the method
    // Logic to sum scores from all AssessmentItems
    return 0;
  }

  double getAverageTimePerItem() {
    // TODO - complete the method
    // Logic to calculate average time taken per AssessmentItem
    return 0.0;
  }
}
