import 'package:flutter/material.dart';

class YarnWidget extends StatefulWidget {
  final String tag;
  final Widget child;

  const YarnWidget({super.key, required this.tag, required this.child});

  @override
  State<YarnWidget> createState() => _YarnWidgetState();
}

class _YarnWidgetState extends State<YarnWidget> {
  static final Map<String, List<GlobalKey>> _taggedWidgets = {};

  final GlobalKey _key = GlobalKey();

  @override
  void initState() {
    super.initState();
    if (_taggedWidgets.containsKey(widget.tag)) {
      _taggedWidgets[widget.tag]!.add(_key);
    } else {
      _taggedWidgets[widget.tag] = [_key];
    }
  }

  @override
  void dispose() {
    _taggedWidgets[widget.tag]?.remove(_key);
    if (_taggedWidgets[widget.tag]?.isEmpty ?? false) {
      _taggedWidgets.remove(widget.tag);
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      foregroundPainter: _YarnPainter(tag: widget.tag, key: _key),
      child: KeyedSubtree(key: _key, child: widget.child),
    );
  }
}

class _YarnPainter extends CustomPainter {
  final String tag;
  final GlobalKey key;

  _YarnPainter({required this.tag, required this.key});

  @override
  void paint(Canvas canvas, Size size) {
    final taggedWidgets = _YarnWidgetState._taggedWidgets[tag];
    if (taggedWidgets == null || taggedWidgets.length < 2) return;

    final RenderBox? currentBox =
        key.currentContext?.findRenderObject() as RenderBox?;
    if (currentBox == null) return;

    final currentPosition = currentBox.paintBounds.center;

    for (final widgetKey in taggedWidgets) {
      if (widgetKey == key) continue;

      final RenderBox? otherBox =
          widgetKey.currentContext?.findRenderObject() as RenderBox?;
      if (otherBox == null) continue;

      final otherPosition = currentBox
          .globalToLocal(otherBox.localToGlobal(otherBox.paintBounds.center));

      final paint = Paint()
        ..color = Colors.blue
        ..strokeWidth = 2.0;

      canvas.drawLine(
        currentPosition,
        otherPosition,
        paint,
      );
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
