import 'package:flutter/material.dart';
import 'package:markdown_editor_plus/markdown_editor_plus.dart';
import 'package:parayada_ui_collection/duolingo/button.dart';
import 'package:parayada_ui_collection/duolingo/icon_button.dart';

import '../../../../core/app_export.dart';
import '../../../../widgets/gap.dart';
import '../../domain/lesson_entity.dart';
import 'chip_list.dart';

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
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(lesson.value.title, style: AppTextStyle.h1Style),
              MarkdownAutoPreview(
                controller:
                    TextEditingController(text: lesson.value.description),
                readOnly: true,
              ),
              if (lesson.value.externalLinks != null)
                IconButton(
                    onPressed: () =>
                        launchUrl(Uri.parse(lesson.value.externalLinks![0])),
                    icon: const Icon(Icons.launch)),
              const Gap(),
              if (lesson.value.topics != null)
                ChipList(values: lesson.value.topics!),
              const Gap(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  if (lesson.value.mindMaps != null)
                    DuolingoIconButton(
                        borderWidth: 4,
                        padding: const EdgeInsets.all(18),
                        child: const Icon(
                          Icons.account_tree_rounded,
                          color: Colors.white,
                        ),
                        onPressed: () {
                          Get.toNamed(AppRoutes.mindMapScreen,
                              arguments: lesson.value.mindMaps![0]);
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
                  if (lesson.value.memoryTricks != null)
                    DuolingoIconButton(
                        borderWidth: 4,
                        padding: const EdgeInsets.all(18),
                        color: Colors.red,
                        child: const Icon(
                          Icons.add_home_work,
                          color: Colors.white,
                        ),
                        onPressed: () {
                          Get.toNamed(AppRoutes.memoryTricksScreen,
                              arguments: lesson.value.memoryTricks);
                        }),
                ],
              ),
              const Gap(),
            ],
          ),
        ),
      ),
    );
  }
}
