import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/app_export.dart';
import '../domain/subject_entity.dart';
import 'controllers/course_controller.dart';
import 'widgets/highlighted_text.dart';
import 'widgets/simple_image_card.dart';

const String logoBlack = 'assets/images/logo/black.svg';

class CoursePage extends GetWidget<CourseController> {
  const CoursePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            children: [
              SvgPicture.asset(
                logoBlack,
                semanticsLabel: 'Parayada Learn Logo',
              ),
              const Text(
                'Parayada Learn',
                style: TextStyle(fontSize: 8),
              )
            ],
          ),
          HighlightedText(
            text: 'msg_find_the_right_topic_to_learn'.tr,
            highlightWords: const ['Your', 'self'],
            style: const TextStyle(
              fontSize: 18.0,
              color: Colors.black,
            ),
            highlightStyle: const TextStyle(
              fontSize: 24.0,
              fontStyle: FontStyle.italic,
              color: Colors.white,
              backgroundColor: Colors.red,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            physics: const BouncingScrollPhysics(),
            padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * 0.33),
            child: Row(
              children: controller.course.subjects
                  .map((SubjectEntity s) => InkWell(
                        onTap: () {
                          HapticFeedback.lightImpact();
                          throw UnimplementedError();
                        },
                        splashColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        child: SimpleImageCard(
                          imageUrl: s.imageUrl,
                          name: s.name,
                          caption: s.name,
                        ),
                      ))
                  .toList(),
            ),
          ),
          DuolingoButton(
            child: Text("lbl_start_learning".tr),
            onPressed: () => {},
          ),
        ],
      ),
    );
  }
}
