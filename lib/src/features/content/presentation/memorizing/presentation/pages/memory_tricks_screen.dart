import 'package:flutter/material.dart';
import 'package:flutter_card_swiper/flutter_card_swiper.dart';

import '../../../../../../core/app_export.dart';
import '../../domain/memory_trick.dart';
import '../widget/memory_trick_card.dart';

class MemoryTrickScreen extends StatelessWidget {
  const MemoryTrickScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<MemoryTrick> memoryTricks = Get.arguments as List<MemoryTrick>;
    return AppLayout(
      title: const Text("Memory Tricks"),
      actions: [
        IconButton(
            onPressed: () {
              throw UnimplementedError();
            },
            icon: const Icon(Icons.add_circle))
      ],
      child: CardSwiper(
        numberOfCardsDisplayed: 2,
        cardsCount: memoryTricks.length,
        backCardOffset: const Offset(0, 15),
        cardBuilder: (BuildContext context, int index,
            int horizontalOffsetPercentage, int verticalOffsetPercentage) {
          return Center(
            child: MemoryTrickCard(
              color: ColorConstant.monoChromaticColorList[index % 5].light,
              trick: memoryTricks[index],
            ),
          );
        },
      ),
    );
  }
}
