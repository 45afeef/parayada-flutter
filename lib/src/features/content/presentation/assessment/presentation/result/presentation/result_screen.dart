import 'package:flutter/material.dart';

import '../../../../../../../core/app_export.dart';
import '../../../../../../../widgets/gap.dart';
import '../../../domain/assessment_item.dart';
import '../../controllers/assessment_controller.dart';

class AssessmentResultScreen extends StatelessWidget {
  const AssessmentResultScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO - remove controller dependency and add params and arguments
    AssessmentController controller = Get.find();

    return AppLayout(
      child: Center(
        child: ListView.builder(
          padding: const EdgeInsets.all(8),
          itemCount: controller.assessment.value.items.length,
          itemBuilder: (BuildContext context, int index) {
            AssessmentItem item = controller.assessment.value.items[index];
            AssessmentItemResponse? response =
                controller.assessmentResult.value.getItemResponse(index);

            return Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      '${index + 1}) ${item.question}',
                      style: AppTextStyle.h6Style,
                    ),
                    const Gap(gap: SizeConstant.large),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          response?.currectAnswer ?? "The Currect Answer",
                          style: AppTextStyle.currectAnswer,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              response?.studentAnswer ?? "-",
                              style: AppTextStyle.choosenAnswer,
                            ),
                            Text(
                              response?.timeTakenInMillisecond
                                      .toReadableTimeDelta() ??
                                  "",
                              style: AppTextStyle.contentStyleSmall,
                            ),
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
