import '../assessment.dart';

abstract class AssessmentRepository {
  Future<Assessment> getAssessment(int id);
}
