import 'package:flutter/material.dart';

import '../../../../../../core/app_export.dart';
import '../../../../../../widgets/gap.dart';
import '../../domain/open_ended/one_word.dart';

class OneWordQuestionWidget extends StatelessWidget {
  final OneWordQuestion item;

  const OneWordQuestionWidget(
    this.item, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
        child: Padding(
      padding: SizeConstant.largePadding,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(item.question),
          const Gap(),
          const Divider(),
          const Gap(),
          const TextField(),
        ],
      ),
    ));
  }
}
