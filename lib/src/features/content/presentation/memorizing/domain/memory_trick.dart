import '../../../domain/content.dart';

enum MemoryTrickType {
  acrostic,
  acronyms,
  association,
  chunking,
  methodOfLoci,
  songOrRhymes,
  story,
  mindPalace,
}

class MemoryTrick extends Content {
  String content;
  MemoryTrickType type;

  MemoryTrick(
    this.content,
    this.type,
  );
}
