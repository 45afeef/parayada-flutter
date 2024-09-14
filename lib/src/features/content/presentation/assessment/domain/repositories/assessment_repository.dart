import '../../data/models/assessment_model.dart';

abstract class AssessmentRepository {
  Future<AssessmentModel> getAssessment(int id);
}
