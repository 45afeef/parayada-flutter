import 'package:flutter/material.dart';

class HighlightedText extends StatelessWidget {
  final String text;
  final List<String> highlightWords;
  final TextStyle style;
  final TextStyle highlightStyle;
  final TextAlign textAlign;

  const HighlightedText({
    super.key,
    required this.text,
    required this.highlightWords,
    required this.style,
    required this.highlightStyle,
    this.textAlign = TextAlign.start,
  });

  @override
  Widget build(BuildContext context) {
    List<TextSpan> spans = [];
    List<String> words = text.split(' ');

    for (String word in words) {
      if (highlightWords.contains(word)) {
        spans.add(
          TextSpan(
            text: '$word ',
            style: highlightStyle,
          ),
        );
      } else {
        spans.add(TextSpan(
          text: '$word ',
          style: style,
        ));
      }
    }

    return RichText(
      textAlign: textAlign,
      text: TextSpan(
        children: spans,
        style: DefaultTextStyle.of(context).style,
      ),
    );
  }
}
