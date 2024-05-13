import 'package:flutter/material.dart';

import '../../../../core/app_export.dart';
import '../controllers/lesson_controller.dart';
import '../widgets/lesson_card.dart';

class LessonScreen extends GetWidget<LessonController> {
  const LessonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppLayout(
      child: Center(
        child: Padding(
          padding: SizeConstant.smallPadding,
          child: LessonCard(
            lesson: controller.lesson,
          ),
        ),
      ),
    );
  }
}
