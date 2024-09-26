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
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: MediaQuery.of(context).size.width / 1.5, //250.0,
            // pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              title: Hero(
                tag: subject.name,
                child: Text(
                  subject.name,
                  style: const TextStyle(color: Colors.white),
                ),
              ),
              background: Stack(
                fit: StackFit.expand,
                children: [
                  // Background image
                  Hero(
                    tag: "${subject.name} ${subject.imageUrl}",
                    child: Image.network(
                      subject.imageUrl,
                      fit: BoxFit.cover,
                    ),
                  ),
                  // Gradient overlay
                  Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Colors.black.withOpacity(0.7),
                          Colors.black.withOpacity(0.0),
                        ],
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          if (subject.units != null)
            SliverList.separated(
              itemCount: subject.units!.length,
              itemBuilder: (context, index) =>
                  UnitWidget(unit: subject.units![index]),
              separatorBuilder: (BuildContext context, int index) =>
                  const Divider(),
            ),
        ],
      ),
    );
  }
}
