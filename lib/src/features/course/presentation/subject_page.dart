import 'package:flutter/material.dart';

import '../../../core/app_export.dart';
import '../domain/subject_entity.dart';
import 'controllers/subject_controller.dart';
import 'widgets/unit_widget.dart';

class SubjectPage extends GetWidget<SubjectController> {
  const SubjectPage({super.key});

  @override
  Widget build(BuildContext context) {
    SubjectEntity subject = Get.arguments as SubjectEntity;

    return Scaffold(
      body: Column(
        children: [
          Hero(
            tag: "${subject.name} ${subject.imageUrl}",
            child: AspectRatio(
              aspectRatio: 3 / 2,
              child: Image.network(
                subject.imageUrl,
                fit: BoxFit.cover,
                width: double.infinity,
              ),
            ),
          ),
          Text(subject.name),
          if (subject.units != null)
            Expanded(
              child: ListView.separated(
                shrinkWrap: true,
                itemCount: subject.units!.length,
                itemBuilder: (context, index) =>
                    UnitWidget(unit: subject.units![index]),
                separatorBuilder: (BuildContext context, int index) =>
                    const Divider(),
              ),
            ),
        ],
      ),
    );
  }
}
