import 'package:flutter/material.dart';
import 'package:parayada/src/features/content/presentation/memorizing/domain/memory_trick.dart';
import 'package:parayada/src/widgets/custom_chip.dart';

import '../../../../../../core/constants/size_constant.dart';

class MemoryTrickCard extends StatelessWidget {
  final MemoryTrick trick;
  final Color color;

  const MemoryTrickCard(
      {super.key, required this.trick, this.color = Colors.white});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: color,
      elevation: 8,
      child: Padding(
        padding: SizeConstant.largePadding,
        child: SingleChildScrollView(
          child: Column(
            children: [Text(trick.content), CustomChip(value: trick.type.name)],
          ),
        ),
      ),
    );
  }
}
