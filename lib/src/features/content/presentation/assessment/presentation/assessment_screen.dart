import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../../../core/app_export.dart';
import '../domain/assessment_item.dart';
import '../domain/closed_ended/flashcard.dart';
import '../domain/closed_ended/mcq.dart';
import '../domain/open_ended/one_word.dart';
import 'controllers/assessment_controller.dart';
import 'widgets/flash_card.dart';
import 'widgets/mcq.dart';
import 'widgets/one_word_question_widget.dart';

class AssessmentScreen extends GetWidget<AssessmentController> {
  const AssessmentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Invoke the startExam method of AssessmentController
    controller.startExam();

    // handle the UI of each assessment item based on type
    Widget buildAssessmentWidget(AssessmentItem item) {
      if (item is MCQ) return MCQWidget(item);
      if (item is FlashCard) {
        return FlashCardWidget(item, onResponse: (response) {});
      }
      if (item is OneWordQuestion) return OneWordQuestionWidget(item);

      // Unsupported AsseessmentItem type
      return Center(
        child: Card(
          child: SizedBox(
            width: 200,
            height: 300,
            child: Center(
              child: Text(
                "lbl_unsupported_assessment_item".tr,
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ),
      );
    }

    return AppLayout(
      actions: [
        Text('lbl_time_spent'.tr,
            style: const TextStyle(fontWeight: FontWeight.bold)),
        Obx(() => Text(controller
            .getTimeSpentOnQuestion(controller.currentQuestionIndex.value))),
      ],
      child: PageView(
        onPageChanged: (value) {
          controller.setCurrentQuestion(value);
          HapticFeedback.lightImpact();
        },
        scrollDirection: Axis.vertical,
        children: controller.assessment.items
            .map((assessmentItem) => Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(child: buildAssessmentWidget(assessmentItem)),
                ))
            .toList(),
      ),
    );
  }
}
