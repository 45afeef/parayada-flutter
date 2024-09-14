import 'dart:convert';

import 'package:flutter/services.dart';

import '../../domain/repositories/assessment_repository.dart';
import '../models/assessment_model.dart';

class DummyAssessmentRepo implements AssessmentRepository {
  @override
  Future<AssessmentModel> getAssessment(int id) async {
    final input = await rootBundle.loadString('assets/dummy_assessment.json');

    await Future.delayed(const Duration(seconds: 2));

    var map = jsonDecode(input);
    return AssessmentModel.fromJson(map);
  }
}
