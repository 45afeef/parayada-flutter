// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'memory_trick_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MemoryTrickModelImpl _$$MemoryTrickModelImplFromJson(
        Map<String, dynamic> json) =>
    _$MemoryTrickModelImpl(
      content: json['content'] as String,
      type: $enumDecode(_$MemoryTrickTypeEnumMap, json['type']),
    );

Map<String, dynamic> _$$MemoryTrickModelImplToJson(
        _$MemoryTrickModelImpl instance) =>
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
