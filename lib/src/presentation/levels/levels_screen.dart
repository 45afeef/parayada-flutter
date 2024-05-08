import 'package:flutter/material.dart';
import 'package:parayada_ui_collection/duolingo/icon_button.dart';

import '../../core/app_export.dart';
import '../../widgets/laytout.dart';

class LevelsScreen extends StatefulWidget {
  const LevelsScreen({super.key});

  @override
  State<LevelsScreen> createState() => _LevelsScreenState();
}

class _LevelsScreenState extends State<LevelsScreen> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return AppLayout(
      child: Center(
        child: ListWheelScrollView(
          itemExtent: 112,
          children: [
            ...List.generate(
                50,
                (index) => Container(
                      margin: const EdgeInsets.all(16),
                      width: 80,
                      height: 80,
                      child: DuolingoIconButton(
                        child: Align(child: Text('${index + 1}')),
                        onPressed: () {
                          Get.toNamed(AppRoutes.lessonsScreen);
                        },
                      ),
                    )),
          ],
        ),
      ),
    );
  }
}
