import 'package:json_annotation/json_annotation.dart';

import '../../domain/assessment.dart';
import '../../domain/assessment_item.dart';
import '../../domain/closed_ended/flashcard.dart';
import '../../domain/closed_ended/match_the_following.dart';
import '../../domain/closed_ended/mcq.dart';
import '../../domain/open_ended/one_word.dart';

part 'assessment_model.g.dart';

class AssessmentModel extends Assessment {
  AssessmentModel({
    required super.name,
    required super.assessmentType,
    required super.items,
  });

  factory AssessmentModel.fromJson(Map<String, dynamic> json) =>
      _$AssessmentFromJson(json);
}
