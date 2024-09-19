import 'package:flutter/material.dart';

import '../../core/app_export.dart';
import '../course/domain/unit_entity.dart';
import '../course/presentation/widgets/unit_widget.dart';
import '../lesson/domain/lesson_entity.dart';

class LevelsScreen extends StatefulWidget {
  const LevelsScreen({super.key});

  @override
  State<LevelsScreen> createState() => _LevelsScreenState();
}

class _LevelsScreenState extends State<LevelsScreen> {
  List<UnitEntity> get _units => [
        UnitEntity(
            name: 'This is the name of the unit',
            lessons: [Lesson(title: '', description: '')])
      ];

  @override
  Widget build(BuildContext context) {
    return AppLayout(
      child: ListView.builder(
        itemCount: _units.length,
        itemBuilder: (BuildContext context, int index) {
          return UnitWidget(unit: _units[index]);
        },
      ),
    );
  }
}
