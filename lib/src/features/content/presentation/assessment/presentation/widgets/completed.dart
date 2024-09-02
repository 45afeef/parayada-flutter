import 'package:flutter/material.dart';

import '../../../../../../core/app_export.dart';
import '../../../../../../widgets/gap.dart';

class CompletedWidget extends StatelessWidget {
  const CompletedWidget({
    super.key,
    required this.onComplete,
  });

  final Function() onComplete;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('lbl_assessment_end_screen'.tr),
              const Gap(),
              const Divider(),
              const Gap(),
              Text('lbl_do_you_want_to_submit'.tr),
              const Gap(gap: SizeConstant.large),
              DuolingoButton(
                onPressed: onComplete,
                color: Colors.red,
                child: Text(
                  'lbl_submit'.tr,
                  style: TextStyle(
                    color: ColorConstant.whiteA700,
                    fontSize: SizeConstant.contentFontLarge,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
