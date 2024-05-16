import 'package:flutter/material.dart';
import 'package:parayada/src/features/content/presentation/memorizing/domain/memory_trick.dart';
import 'package:parayada/src/widgets/custom_chip.dart';

import '../../../../../../core/constants/size_constant.dart';

class MemoryTrickCard extends StatelessWidget {
  final MemoryTrick trick;

  const MemoryTrickCard({super.key, required this.trick});

  @override
  Widget build(BuildContext context) {
    return Card(
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
