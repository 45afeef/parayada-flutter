import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

import '../../../../../../core/constants/size_constant.dart';
import '../../../../../../widgets/gap.dart';
import '../../domain/closed_ended/mcq.dart';

class MCQWidget extends StatelessWidget {
  final MCQ item;

  const MCQWidget(
    this.item, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        Card(
          child: Padding(
            padding: SizeConstant.mediumPadding,
            child: Text(item.question),
          ),
        ).animate(delay: 400.microseconds).fade().slideX(),
        const Gap(gap: SizeConstant.large),
        ...item.options.asMap().entries.map(
              (e) => Card(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(e.value),
                ),
              )
                  .animate(delay: (e.key * 300 + 500).milliseconds)
                  .fade()
                  .scale(begin: const Offset(1.1, 1.1))
                  .slideY(begin: 1),
            ),
      ],
    );
  }
}
