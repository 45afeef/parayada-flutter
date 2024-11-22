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
  pegs,
  pao,
  mnemonics,
  eduSong,
  eduRap,
  sayItAloud,
}

class MemoryTrick extends Content {
  final String content;
  final MemoryTrickType type;

  MemoryTrick({
    required this.content,
    required this.type,
  });
}
