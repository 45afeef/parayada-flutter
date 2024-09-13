// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'memory_trick.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MemoryTrickImpl _$$MemoryTrickImplFromJson(Map<String, dynamic> json) =>
    _$MemoryTrickImpl(
      content: json['content'] as String,
      type: $enumDecode(_$MemoryTrickTypeEnumMap, json['type']),
    );

Map<String, dynamic> _$$MemoryTrickImplToJson(_$MemoryTrickImpl instance) =>
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
