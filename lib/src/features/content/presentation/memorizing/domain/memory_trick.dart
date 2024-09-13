import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/content.dart';

part 'memory_trick.freezed.dart';
part 'memory_trick.g.dart';

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
}

@freezed
class MemoryTrick extends Content with _$MemoryTrick {
  const factory MemoryTrick({
    required String content,
    required MemoryTrickType type,
  }) = _MemoryTrick;

  factory MemoryTrick.fromJson(Map<String, dynamic> json) =>
      _$MemoryTrickFromJson(json);
}
