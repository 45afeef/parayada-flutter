import 'package:flutter/widgets.dart';

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
        Text(unit.name),
        ...unit.lessons.map((lesson) => Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                child: Transform(
                  alignment: Alignment.bottomCenter,
                  transform: Matrix4.identity()
                    ..rotateX(0.45)
                    ..rotateY(-0),
                  child: SizedBox(
                    width: 80,
                    height: 80,
                    child: DuolingoIconButton(
                      borderWidth: 3,
                      onPressed: () {
                        Get.toNamed(AppRoutes.lessonScreen, arguments: lesson.id);
                      },
                      padding: EdgeInsets.zero,
                      child: Align(child: Text(lesson.title)),
                    ),
                  ),
                ),
              ),
            )),
      ],
    );
  }
}
