// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'memory_trick.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MemoryTrick _$MemoryTrickFromJson(Map<String, dynamic> json) => MemoryTrick(
      json['content'] as String,
      $enumDecode(_$MemoryTrickTypeEnumMap, json['type']),
    );

Map<String, dynamic> _$MemoryTrickToJson(MemoryTrick instance) =>
    <String, dynamic>{
      'content': instance.content,
      'type': _$MemoryTrickTypeEnumMap[instance.type]!,
    };

const _$MemoryTrickTypeEnumMap = {
  MemoryTrickType.acrostic: 'acrostic',
  MemoryTrickType.acronyms: 'acronyms',
  MemoryTrickType.association: 'association',
  MemoryTrickType.chunking: 'chunking',
  MemoryTrickType.methodOfLoci: 'methodOfLoci',
  MemoryTrickType.songOrRhymes: 'songOrRhymes',
  MemoryTrickType.story: 'story',
  MemoryTrickType.mindPalace: 'mindPalace',
  MemoryTrickType.pegs: 'pegs',
  MemoryTrickType.pao: 'pao',
  MemoryTrickType.mnemonics: 'mnemonics',
};
