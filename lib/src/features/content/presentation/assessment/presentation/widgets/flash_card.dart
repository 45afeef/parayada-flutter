import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:parayada_ui_collection/duolingo/button.dart';

import '../../../../../../core/app_export.dart';
import '../../domain/closed_ended/flashcard.dart';

class FlashCardWidget extends StatelessWidget {
  final FlashCard item;
  final void Function(String) onResponse;

  const FlashCardWidget(
    this.item, {
    super.key,
    required this.onResponse,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      height: 500,
      child: FlipCard(
        front: Card(
          color: ColorConstant.red700,
          child: Center(child: Text(item.question)),
        ),
        back: Stack(
          children: [
            Card(
              color: ColorConstant.amber700,
              child: Center(
                child: Text(item.explanation),
              ),
            ),
            Positioned(
              bottom: 10,
              width: 300,
              child: ButtonBar(
                alignment: MainAxisAlignment.spaceEvenly,
                children: [
                  DuolingoButton(
                    color: ColorConstant.green600,
                    onPressed: () => onResponse('True'),
                    child: Text('lbl_yes'.tr),
                  ),
                  DuolingoButton(
                    color: ColorConstant.red700,
                    onPressed: () => onResponse('False'),
                    child: Text("lbl_no".tr),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
