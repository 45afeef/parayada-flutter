import 'package:flutter/material.dart';

class ChipList extends StatelessWidget {
  const ChipList({
    super.key,
    required this.values,
  });

  final List<String> values;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 20,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: values.asMap().entries.map((entry) {
          final index = entry.key;
          final value = entry.value;
          final color = _getColorForIndex(index);
          return Container(
            margin: const EdgeInsets.symmetric(horizontal: 2),
            child: Container(
              height: 20,
              decoration: BoxDecoration(
                color: color.light,
                borderRadius: const BorderRadius.all(Radius.circular(24)),
                border: Border.all(color: color.dark, width: 1),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Center(
                child: Text(
                  value,
                  style: TextStyle(color: color.dark, fontSize: 10),
                ),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }

  _ColorCombo _getColorForIndex(int index) {
    // Define your list of colors here
    final List<_ColorCombo> chipColors = [
      _ColorCombo(Colors.white54, Colors.black26),
      // _ColorCombo(Colors.red[100]!, Colors.red),
      // _ColorCombo(Colors.blue[100]!, Colors.blue),
      // _ColorCombo(Colors.green[100]!, Colors.green),
      // _ColorCombo(const Color.fromARGB(255, 255, 200, 242),
      //     const Color.fromARGB(255, 210, 58, 174)),
      // _ColorCombo(Colors.yellow[100]!, const Color.fromARGB(255, 255, 196, 59)),
    ];

    // Cycle through the colors
    return chipColors[index % chipColors.length];
  }
}

class _ColorCombo {
  Color light;
  Color dark;
  _ColorCombo(this.light, this.dark);
}