import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:parayada/src/features/content/presentation/assessment/presentation/assessment_screen.dart';

class UnSupportedAssessmentItemTypeWidget extends AssessmentWidget {
  UnSupportedAssessmentItemTypeWidget({super.key})
      : super(
          item: null,
          onResponse: (_) {},
        );

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        child: SizedBox(
          width: 200,
          height: 300,
          child: Center(
            child: Text(
              "lbl_unsupported_assessment_item".tr,
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}
