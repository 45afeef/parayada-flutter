// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lesson_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Lesson _$LessonFromJson(Map<String, dynamic> json) => Lesson(
      title: json['title'] as String,
      description: json['description'] as String,
      topics:
          (json['topics'] as List<dynamic>?)?.map((e) => e as String).toList(),
      memoryTricks: (json['memoryTricks'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$LessonToJson(Lesson instance) => <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'topics': instance.topics,
      'memoryTricks': instance.memoryTricks,
    };
