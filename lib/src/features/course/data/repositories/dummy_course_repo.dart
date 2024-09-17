import 'dart:convert';

import 'package:flutter/services.dart' show rootBundle;

import '../../domain/repositories/course_repository.dart';
import '../course_model.dart';

class DummyCourseRepo extends CourseRepository {
  @override
  Future<CourseModel> getCourse(int id) async {
    final input = await rootBundle.loadString('assets/dummy_course.json');

    await Future.delayed(const Duration(seconds: 1));

    var map = jsonDecode(input);
    return CourseModel.fromJson(map);
  }
}
