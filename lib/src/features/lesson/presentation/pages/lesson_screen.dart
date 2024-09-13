import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

import '../../../../core/app_export.dart';
import '../controllers/lesson_controller.dart';
import '../widgets/lesson_card.dart';

class LessonScreen extends GetWidget<LessonController> {
  const LessonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO - Important make sure this is called only once
    final future = controller.fetchLesson(1);

    return AppLayout(
      child: Center(
        child: Padding(
            padding: SizeConstant.smallPadding,
            child: FutureBuilder(
                future: future,
                builder: (context, snapshort) {
                  if (snapshort.hasError) {
                    return Card(child: Text("error_fetching_lesson".tr));
                  }
                  if (!snapshort.hasData) {
                    return const CircularProgressIndicator();
                  }

                  return LessonCard(lesson: snapshort.data!)
                      .animate(delay: const Duration(milliseconds: 100))
                      .scale();
                })),
      ),
    );
  }
}
