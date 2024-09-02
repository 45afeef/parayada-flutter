import 'package:flutter/material.dart';

import '../../../../../../core/app_export.dart';
import '../../../../../../widgets/gap.dart';
import '../../domain/open_ended/one_word.dart';
import '../assessment_screen.dart';

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
              elevation: const Offset(0, 6),
              child: const Text('Submit'),
              onPressed: () => onResponse(controller.text))
        ],
      ),
    ));
  }
}
