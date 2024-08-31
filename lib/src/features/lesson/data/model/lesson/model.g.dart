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
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$LessonModelToJson(LessonModel instance) =>
    <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'topics': instance.topics,
      'memoryTricks': instance.memoryTricks,
    };
