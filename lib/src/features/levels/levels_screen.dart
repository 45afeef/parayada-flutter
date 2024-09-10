import 'package:flutter/material.dart';
import 'package:parayada_ui_collection/duolingo/icon_button.dart';

import '../../core/app_export.dart';

class LevelsScreen extends StatefulWidget {
  const LevelsScreen({super.key});

  @override
  State<LevelsScreen> createState() => _LevelsScreenState();
}

class _LevelsScreenState extends State<LevelsScreen> {
  @override
  Widget build(BuildContext context) {
    return AppLayout(
      child: ListView.builder(
        itemCount: 50,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Align(
              child: Transform(
                alignment: Alignment.bottomCenter,
                transform: Matrix4.identity()
                  ..rotateX(0.7)
                  ..rotateY(-0),
                child: SizedBox(
                  width: 80,
                  height: 80,
                  child: DuolingoIconButton(
                    borderWidth: 3,
                    onPressed: () {
                      Get.toNamed(AppRoutes.lessonsScreen);
                    },
                    padding: EdgeInsets.zero,
                    child: Align(child: Text('${index + 1}')),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
