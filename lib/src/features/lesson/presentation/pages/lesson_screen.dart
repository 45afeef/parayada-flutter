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
                builder: (context, snapshot) {
                  if (snapshot.hasError) {
                    return Card(child: Text("error_fetching".tr));
                  }
                  if (!snapshot.hasData) {
                    return const CircularProgressIndicator();
                  }

                  return LessonCard(lesson: snapshot.data!)
                      .animate(delay: const Duration(milliseconds: 100))
                      .scale();
                })),
      ),
    );
  }
}
