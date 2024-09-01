import 'dart:convert';

import 'package:flutter/services.dart' show rootBundle;

import '../../domain/repositories/lesson_repository.dart';
import '../model/lesson/model.dart';

class DummyLessonRepo extends LessonRepository {
  @override
  Future<void> deleteLesson(int id) {
    // TODO: implement deleteLesson
    throw UnimplementedError();
  }

  @override
  Future<List<LessonModel>> getAllLessons() {
    // TODO: implement getAllLessons
    throw UnimplementedError();
  }

  @override
  Future<LessonModel> getLesson(int id) async {
    final input = await rootBundle.loadString('assets/dummy_lesson.json');

    var map = jsonDecode(input);
    return LessonModel.fromJson(map);
  }

  @override
  Future<void> saveLesson(LessonModel lesson) {
    // TODO: implement saveLesson
    throw UnimplementedError();
  }
}
