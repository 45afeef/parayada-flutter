import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:parayada/src/core/app_export.dart';

import '../../domain/closed_ended/match_the_following.dart';
import '../assessment_screen.dart';

class MatchTheFollowingWidget extends AssessmentWidget<MatchTheFollowing> {
  const MatchTheFollowingWidget({
    super.key,
    required super.item,
    required super.onResponse,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 64, horizontal: 16),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text(item.question),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  // Left side items
                  MtfItems(
                      items: [...item.leftSideItems, ...item.leftSideItems]),
                  // Right side items
                  MtfItems(
                      items: [...item.rightSideItems, ...item.rightSideItems]),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MtfItems extends StatelessWidget {
  const MtfItems({
    super.key,
    required this.items,
  });

  final List<String> items;

  final Color unSelectedColor = Colors.grey;
  final List<Color> selectedColors = const [
    Colors.green,
    Colors.red,
    Colors.blue,
    Colors.pink,
    Colors.amber,
    Colors.deepPurple,
    Colors.lightGreen,
    Colors.cyan,
  ];

  @override
  Widget build(BuildContext context) {
    items.shuffle();
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ...items.map((e) => SizedBox(
              width: 140,
              child: DuolingoButton(
                color: Colors.white,
                padding: const EdgeInsets.symmetric(vertical: 10),
                radius: const BorderRadius.all(Radius.circular(8)),
                shadowColor: Colors.greenAccent[700],
                border: Border.all(color: Colors.greenAccent[700]!, width: 2),
                elevation: const Offset(0, 4),
                onPressed: () {
                  HapticFeedback.lightImpact();
                },
                child: Center(child: Text(e)),
              ),
            ))
      ],
    );
  }
}
