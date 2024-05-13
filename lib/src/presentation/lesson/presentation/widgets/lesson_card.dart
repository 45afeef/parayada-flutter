import 'package:flutter/material.dart';
import 'package:parayada_ui_collection/duolingo/button.dart';
import 'package:parayada_ui_collection/duolingo/icon_button.dart';

import '../../../../core/app_export.dart';
import '../../../../widgets/gap.dart';
import '../../domain/lesson_entity.dart';

class LessonCard extends StatelessWidget {
  final Rx<Lesson> lesson;

  const LessonCard({
    super.key,
    required this.lesson,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: SizeConstant.largePadding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(lesson.value.title, style: AppTextStyle.h1Style),
            Text(lesson.value.description,
                style: AppTextStyle.contentStyleNormal),
            const Gap(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                DuolingoIconButton(
                    child: const Icon(
                      Icons.account_tree_rounded,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      Get.toNamed(AppRoutes.mindMapScreen);
                    }),
                DuolingoIconButton(
                    color: Colors.red,
                    shadowColor: Colors.red[900]!,
                    child: const Icon(
                      Icons.add_home_work,
                      color: Colors.white,
                    ),
                    onPressed: () {}),
                DuolingoButton(
                    color: Colors.blue,
                    shadowColor: Colors.blue[900]!,
                    child: Text(
                      "lbl_assess".tr,
                      style: const TextStyle(color: Colors.white),
                    ),
                    onPressed: () {}),
              ],
            ),
            const Gap(),
          ],
        ),
      ),
    );
  }
}
