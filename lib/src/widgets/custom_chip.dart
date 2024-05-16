import 'package:flutter/material.dart';

class CustomChip extends StatelessWidget {
  const CustomChip({
    super.key,
    required this.value,
    this.backgroundColor = const Color.fromARGB(255, 223, 255, 224),
    this.foregroundColor = Colors.green,
  });

  final Color backgroundColor;
  final Color foregroundColor;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 2),
      child: Container(
        height: 20,
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: const BorderRadius.all(Radius.circular(24)),
          border: Border.all(color: foregroundColor, width: 1),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Center(
          child: Text(
            value,
            style: TextStyle(color: foregroundColor, fontSize: 10),
          ),
        ),
      ),
    );
  }
}
