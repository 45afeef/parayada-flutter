import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../../../../core/app_export.dart';
import '../../domain/closed_ended/match_the_following.dart';

class MatchTheFollowingWidget extends StatefulWidget {
  const MatchTheFollowingWidget({
    super.key,
    required this.item,
    required this.onResponse,
  });

  final MatchTheFollowing item;
  final void Function(dynamic) onResponse;

  @override
  State<MatchTheFollowingWidget> createState() =>
      _MatchTheFollowingWidgetState();
}

class _MatchTheFollowingWidgetState extends State<MatchTheFollowingWidget> {
  List<Map<String, dynamic>> matchedItems =
      []; // Keys are - leftItem, rightItem, Color

  String? currentSelectedLeftItem;
  String? currentSelectedRightItem;

  final List<Color> selectedColors = [
    Colors.green,
    Colors.red,
    Colors.blue,
    Colors.amber,
    Colors.deepPurple,
    Colors.lightGreen,
    Colors.cyan,
    Colors.pink,
  ];

  void matchItems() {
    var color = selectedColors[0];

    var i = {
      'color': color,
      'left': currentSelectedLeftItem,
      'right': currentSelectedRightItem,
    };

    var match = matchedItems
        .firstWhereOrNull((e) => e['left'] == null || e['right'] == null);

    setState(() {
      if (match != null) {
        matchedItems.remove(match);
      }
      matchedItems.add(i);
    });

    if (currentSelectedLeftItem != null && currentSelectedRightItem != null) {
      selectedColors.removeAt(0);
      currentSelectedLeftItem = null;
      currentSelectedRightItem = null;
    }
  }

  @override
  void initState() {
    super.initState();

    widget.item.leftSideItems.shuffle();
    widget.item.rightSideItems.shuffle();
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 64, horizontal: 16),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text(widget.item.question),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  // Left side items
                  MtfItems(
                    place: 'left',
                    matchedItems: matchedItems,
                    items: [
                      ...widget.item.leftSideItems,
                      ...widget.item.leftSideItems.map((e) => '$e --')
                    ],
                    onSelection: (value) {
                      currentSelectedLeftItem = value;

                      matchItems();
                    },
                  ),
                  // Right side items
                  MtfItems(
                      place: 'right',
                      matchedItems: matchedItems,
                      items: [
                        ...widget.item.rightSideItems,
                        ...widget.item.rightSideItems.map((e) => '$e --')
                      ],
                      onSelection: (value) {
                        currentSelectedRightItem = value;

                        matchItems();
                      }),
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
    required this.onSelection,
    required this.matchedItems,
    required this.place,
    this.unSelectedColor = Colors.grey,
  });

  final String place;
  final List<String> items;
  final List<Map<String, dynamic>> matchedItems;
  final ValueChanged<String> onSelection;
  final Color unSelectedColor;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ...items.map((e) {
          Map<String, dynamic>? match = matchedItems.firstWhereOrNull(
            (element) => element[place] == e,
          );

          Color color = match?['color'] ?? unSelectedColor;
          return Item(
            selectionColor: color,
            text: e,
            onSelection: match == null ? onSelection : (_) {},
          );
        }),
      ],
    );
  }
}

class Item extends StatelessWidget {
  const Item({
    super.key,
    required this.selectionColor,
    required this.text,
    required this.onSelection,
  });

  final Color selectionColor;
  final String text;
  final ValueChanged<String> onSelection;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 140,
      child: DuolingoButton(
        color: Colors.white,
        padding: const EdgeInsets.symmetric(vertical: 10),
        radius: const BorderRadius.all(Radius.circular(8)),
        shadowColor: selectionColor,
        border: Border.all(color: selectionColor, width: 2),
        elevation: const Offset(0, 4),
        onPressed: () {
          HapticFeedback.lightImpact();
          onSelection(text);
        },
        child: Center(child: Text(text)),
      ),
    );
  }
}
