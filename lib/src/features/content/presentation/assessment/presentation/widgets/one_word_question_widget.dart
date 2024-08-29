import 'package:flutter/material.dart';
import 'package:parayada/src/features/content/presentation/assessment/presentation/assessment_screen.dart';

import '../../../../../../core/app_export.dart';
import '../../../../../../widgets/gap.dart';
import '../../domain/open_ended/one_word.dart';

class OneWordQuestionWidget extends AssessmentWidget<OneWordQuestion> {
  OneWordQuestionWidget({
    super.key,
    required super.item,
    required void Function(String) onResponse,
  }) : super(onResponse: (s) => onResponse(s));

  @override
  Widget build(BuildContext context) {
    TextEditingController controller = TextEditingController();

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
          TextField(controller: controller),
          const Gap(gap: SizeConstant.large),
          DuolingoButton(
              child: const Text('Submit'),
              onPressed: () => onResponse(controller.text))
        ],
      ),
    ));
  }
}
