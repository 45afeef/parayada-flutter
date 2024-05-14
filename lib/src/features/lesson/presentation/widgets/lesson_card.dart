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
            SizedBox(
              height: 50,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  if (lesson.value.topics != null)
                    ...lesson.value.topics!.map((e) => Container(
                          margin: const EdgeInsets.symmetric(horizontal: 2),
                          child: Chip(
                            backgroundColor: Colors.greenAccent[100],
                            padding: const EdgeInsets.symmetric(horizontal: 16),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(100),
                              side: const BorderSide(
                                  color: Colors.green,
                                  width: 1), // Black border
                            ),
                            label: Text(
                              e,
                              style: const TextStyle(
                                  color: Colors.green, fontSize: 10),
                            ),
                          ),
                        )),
                ],
              ),
            ),
            const Gap(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                DuolingoIconButton(
                    borderWidth: 4,
                    padding: const EdgeInsets.all(18),
                    child: const Icon(
                      Icons.account_tree_rounded,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      Get.toNamed(AppRoutes.mindMapScreen,
                          arguments: lesson.value.mindMaps);
                    }),
                DuolingoButton(
                    padding: const EdgeInsets.all(12),
                    borderWidth: 4,
                    elevation: const Offset(4, 8),
                    color: Colors.blue,
                    child: Text(
                      "lbl_assess".tr,
                      style: const TextStyle(color: Colors.white),
                    ),
                    onPressed: () {}),
                DuolingoIconButton(
                    borderWidth: 4,
                    padding: const EdgeInsets.all(18),
                    color: Colors.red,
                    child: const Icon(
                      Icons.add_home_work,
                      color: Colors.white,
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
