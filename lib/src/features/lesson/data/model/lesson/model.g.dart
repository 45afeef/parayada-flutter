// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LessonModel _$LessonModelFromJson(Map<String, dynamic> json) => LessonModel(
      title: json['title'] as String,
      description: json['description'] as String,
      topics:
          (json['topics'] as List<dynamic>?)?.map((e) => e as String).toList(),
      memoryTricks: (json['memoryTricks'] as List<dynamic>?)
          ?.map((e) => MemoryTrick.fromJson(e as Map<String, dynamic>))
          .toList(),
      externalLinks: (json['externalLinks'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      mindMaps: (json['mindMaps'] as List<dynamic>?)
          ?.map((e) => MindMap.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$LessonModelToJson(LessonModel instance) =>
    <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'externalLinks': instance.externalLinks,
      'topics': instance.topics,
      'mindMaps': instance.mindMaps?.map((e) => e.toJson()).toList(),
      'memoryTricks': instance.memoryTricks?.map((e) => e.toJson()).toList(),
    };
