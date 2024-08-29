import 'package:flutter/material.dart';
import 'package:parayada/src/widgets/gap.dart';

import '../../../../../../core/app_export.dart';

class CompletedWidget extends StatelessWidget {
  const CompletedWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('lbl_assessment_end_screen'.tr),
              const Gap(),
              Text('lbl_do_you_want_to_submit'.tr),
              const Gap(gap: SizeConstant.large),
              DuolingoButton(
                onPressed: () => throw UnimplementedError(),
                child: Text('lbl_submit'.tr),
              )
            ],
          ),
        ),
      ),
    );
  }
}
