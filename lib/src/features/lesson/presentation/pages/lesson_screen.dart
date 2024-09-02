import 'package:flutter/material.dart';

import '../../../../core/app_export.dart';
import '../../domain/lesson_entity.dart';
import '../controllers/lesson_controller.dart';
import '../widgets/lesson_card.dart';

class LessonScreen extends GetWidget<LessonController> {
  const LessonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO - Important make sure this is called only once
    controller.fetchLesson(1);

    return AppLayout(
      child: Center(
        child: Padding(
          padding: SizeConstant.smallPadding,
          child: controller.lesson.value != Lesson.empty()
              ? Obx(() => LessonCard(lesson: controller.lesson.value))
              : const Text("loading"),
        ),
      ),
    );
  }
}
