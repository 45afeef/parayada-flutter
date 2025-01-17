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
import 'widgets/unsupported_assessment_type.dart';

class AssessmentScreen extends GetWidget<AssessmentController> {
  const AssessmentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Invoke the startExam method of AssessmentController
    controller.startExam();

    // handle the UI of each assessment item based on type
    AssessmentWidget buildAssessmentWidget(AssessmentItem assessmentItem) {
      if (assessmentItem is MCQ) {
        return MCQWidget(
            item: assessmentItem,
            onResponse: (res) => controller.handleStudentResponse(res, context));
      }
      if (assessmentItem is FlashCard) {
        return FlashCardWidget(
            item: assessmentItem,
            onResponse: (res) => controller.handleStudentResponse(res, context));
      }
      if (assessmentItem is OneWordQuestion) {
        return OneWordQuestionWidget(
            item: assessmentItem,
            onResponse: (res) => controller.handleStudentResponse(res, context));
      }

      // Unsupported AssessmentItem type
      return UnSupportedAssessmentItemTypeWidget();
    }

    return AppLayout(
      actions: [
        Text('lbl_time_spent'.tr,
            style: const TextStyle(fontWeight: FontWeight.bold)),
        Obx(() => Text(controller
            .getTimeSpentOnQuestion(controller.currentQuestionIndex))),
      ],
      child: PageView(
        onPageChanged: (value) {
          controller.currentQuestionIndex = value;
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

abstract class AssessmentWidget<T> extends StatelessWidget {
  const AssessmentWidget({
    super.key,
    required this.item,
    required this.onResponse,
  });

  /// The AssessemntItem
  final T item;

  /// The callback that is called when the button is tapped or otherwise activated.
  ///
  /// If this is set to null, the button will be disabled.
  final void Function(dynamic) onResponse;
}
