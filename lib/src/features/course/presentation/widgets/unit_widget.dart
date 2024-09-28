import 'package:flutter/material.dart';

import '../../../../core/app_export.dart';
import '../../../../widgets/gap.dart';
import '../../domain/unit_entity.dart';

class UnitWidget extends StatelessWidget {
  const UnitWidget({
    super.key,
    required this.unit,
  });

  final UnitEntity unit;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Gap(gap: SizeConstant.large),
        Text(
          unit.name,
          style: AppStyle.txtGilroyBold16,
        ),
        ...unit.lessons.map(
          (lesson) => Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  width: 80,
                  height: 80,
                  child: DuolingoIconButton(
                    borderWidth: 3,
                    onPressed: () {
                      Get.toNamed(AppRoutes.lessonScreen, arguments: lesson.id);
                    },
                    padding: EdgeInsets.zero,
                    child: const Icon(
                      Icons.play_arrow_rounded,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              Text(lesson.title),
            ],
          ),
        ),
      ],
    );
  }
}
