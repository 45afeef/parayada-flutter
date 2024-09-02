import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:parayada/src/features/content/presentation/assessment/data/models/assessment_model.dart';

import '../../domain/repositories/assessment_repository.dart';

class DummyAssessmentRepo implements AssessmentRepository {
  @override
  Future<AssessmentModel> getAssessment(int id) async {
    final input = await rootBundle.loadString('assets/dummy_assessment.json');

    var map = jsonDecode(input);
    return AssessmentModel.fromJson(map);
  }
}
