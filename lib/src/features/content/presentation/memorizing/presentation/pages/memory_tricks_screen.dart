import 'package:flutter/material.dart';

import '../../../../../../core/app_export.dart';
import '../../domain/memory_trick.dart';
import '../widget/memory_trick_card.dart';

class MemoryTrickScreen extends StatelessWidget {
  const MemoryTrickScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<MemoryTrick> memoryTricks = Get.arguments as List<MemoryTrick>;
    return AppLayout(
        child: Center(
            child: MemoryTrickCard(
      trick: memoryTricks[0],
    )));
  }
}
