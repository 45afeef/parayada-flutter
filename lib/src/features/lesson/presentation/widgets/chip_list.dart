import 'package:flutter/material.dart';
import 'package:parayada/src/core/app_export.dart';

import '../../../../widgets/custom_chip.dart';

class ChipList extends StatelessWidget {
  const ChipList({
    super.key,
    required this.values,
  });

  final List<String> values;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 20,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: values.asMap().entries.map((entry) {
          final index = entry.key;
          final value = entry.value;
          final color = _getColorForIndex(index);
          return CustomChip(
            value: value,
            foregroundColor: color.dark,
            backgroundColor: color.light,
          );
        }).toList(),
      ),
    );
  }

  ColorCombo _getColorForIndex(int index) {
    // Cycle through the colors
    return ColorConstant.monoChromaticColorList[
        index % ColorConstant.monoChromaticColorList.length];
  }
}
