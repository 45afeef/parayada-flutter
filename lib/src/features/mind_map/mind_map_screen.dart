import 'package:flutter/material.dart';

import '../../core/app_export.dart';
import 'domain/mind_map.dart';
import 'presentation/mind_map_accordion.dart';

class MindMapScreen extends StatelessWidget {
  const MindMapScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final mindMap = Get.arguments as MindMap;
    return AppLayout(
      child: Center(
        child: MindMapAccordion(
          mindMap: mindMap,
        ),
      ),
    );
  }
}
