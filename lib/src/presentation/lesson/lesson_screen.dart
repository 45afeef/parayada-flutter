import 'package:flutter/material.dart';
import 'package:parayada_ui_collection/duolingo/button.dart';
import 'package:parayada_ui_collection/duolingo/icon_button.dart';

import '../../core/app_export.dart';
import '../../core/constants/dummy.dart';
import '../../core/constants/size_constant.dart';
import '../../widgets/gap.dart';
import '../../widgets/laytout.dart';

class LessonScreen extends StatelessWidget {
  const LessonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppLayout(
      child: Center(
        child: Padding(
          padding: SizeConstant.smallPadding,
          child: Card(
            child: Padding(
              padding: SizeConstant.largePadding,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(Dummy.heading, style: AppTextStyle.h1Style),
                  Text(Dummy.loremIpsum,
                      style: AppTextStyle.contentStyleNormal),
                  const Gap(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      DuolingoIconButton(
                          child: const Icon(
                            Icons.account_tree_rounded,
                            color: Colors.white,
                          ),
                          onPressed: () {
                            Get.toNamed(AppRoutes.mindMapScreen);
                          }),
                      DuolingoIconButton(
                          color: Colors.red,
                          shadowColor: Colors.red[900]!,
                          child: const Icon(
                            Icons.add_home_work,
                            color: Colors.white,
                          ),
                          onPressed: () {}),
                      DuolingoButton(
                          color: Colors.blue,
                          shadowColor: Colors.blue[900]!,
                          child: Text(
                            "lbl_assess".tr,
                            style: const TextStyle(color: Colors.white),
                          ),
                          onPressed: () {}),
                    ],
                  ),
                  const Gap(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
