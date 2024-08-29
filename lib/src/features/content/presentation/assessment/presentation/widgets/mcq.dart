import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

import '../../../../../../core/app_export.dart';
import '../../../../../../widgets/gap.dart';
import '../../domain/closed_ended/mcq.dart';
import '../assessment_screen.dart';

class MCQWidget extends AssessmentWidget<MCQ> {
  MCQWidget({
    super.key,
    required super.item,
    required void Function(String) onResponse,
    this.selectedAnswer,
  }) : super(onResponse: (s) => onResponse(s));

  final String? selectedAnswer;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        Card(
          child: Padding(
            padding: SizeConstant.mediumPadding,
            child: Text(item.question),
          ),
        ).animate(delay: 400.microseconds).fade().slideX(),
        const Gap(gap: SizeConstant.large),
        // Options
        ...item.options.asMap().entries.map(
              (e) => Card(
                color:
                    selectedAnswer == e.value ? ColorConstant.pinkA200 : null,
                child: InkWell(
                  onTap: () => onResponse(e.value),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(e.value),
                  ),
                ),
              )
                  .animate(delay: Duration(milliseconds: e.key * 300 + 500))
                  .fade()
                  .scale(begin: const Offset(1.1, 1.1))
                  .slideY(begin: 1),
            ),
      ],
    );
  }
}
