import 'package:flutter/material.dart';

/// A custom widget that connects widgets with the same tag using a virtual yarn.
class YarnWidget extends StatefulWidget {
  final String tag;
  final Widget child;
  final Color color;
  final double width;

  /// Creates a YarnWidget.
  ///
  /// The [tag] is used to identify widgets that should be connected.
  /// The [child] is the widget to be displayed.
  /// The [color] is the color of the yarn connecting the widgets.
  /// The [width] is the width of the yarn connecting the widgets.
  const YarnWidget({
    super.key,
    required this.tag,
    required this.child,
    this.color = Colors.blue,
    this.width = 2.0,
  });

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
      painter: _YarnPainter(
          tag: widget.tag, key: _key, color: widget.color, width: widget.width),
      child: KeyedSubtree(key: _key, child: widget.child),
    );
  }
}

class _YarnPainter extends CustomPainter {
  final String tag;
  final GlobalKey key;
  final Color color;
  final double width;

  _YarnPainter({
    required this.tag,
    required this.key,
    required this.color,
    required this.width,
  });

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
        ..color = color
        ..strokeWidth = width;

      canvas.drawLine(
        currentPosition,
        otherPosition,
        paint,
      );
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
