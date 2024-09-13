// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lesson_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LessonModelImpl _$$LessonModelImplFromJson(Map<String, dynamic> json) =>
    _$LessonModelImpl(
      title: json['title'] as String,
      description: json['description'] as String,
      externalLinks: (json['externalLinks'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      topics:
          (json['topics'] as List<dynamic>?)?.map((e) => e as String).toList(),
      mindMaps: (json['mindMaps'] as List<dynamic>?)
          ?.map((e) => MindMap.fromJson(e as Map<String, dynamic>))
          .toList(),
      memoryTricks: (json['memoryTricks'] as List<dynamic>?)
          ?.map((e) => MemoryTrickModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$LessonModelImplToJson(_$LessonModelImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'externalLinks': instance.externalLinks,
      'topics': instance.topics,
      'mindMaps': instance.mindMaps,
      'memoryTricks': instance.memoryTricks,
    };
