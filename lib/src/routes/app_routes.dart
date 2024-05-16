import 'package:get/get.dart';
import 'package:parayada/src/features/content/presentation/memorizing/presentation/pages/memory_tricks_screen.dart';

import '../features/affiliate_url_screen/affiliate_url_screen.dart';
import '../features/affiliate_url_screen/binding/affiliate_url_binding.dart';
import '../features/lesson/application/lesson_binding.dart';
import '../features/lesson/presentation/pages/lesson_screen.dart';
import '../features/levels/levels_screen.dart';
import '../features/mind_map/mind_map_screen.dart';

class AppRoutes {
  static const String affiliateUrlScreen = '/affiliate_url_screen';

  static const String mindMapScreen = '/mindmap';

  static const String levelsScreen = '/levels';

  static const String lessonsScreen = '/lessons';

  static const String memoryTricksScreen = '/memory-trick';

  static const String initialRoute = '/home';

  static List<GetPage> pages = [
    GetPage(
        name: affiliateUrlScreen,
        page: () => const AffiliateUrlScreen(),
        bindings: [
          AffiliateUrlBinding(),
        ]),
    GetPage(name: initialRoute, page: () => const LevelsScreen()),
    GetPage(name: mindMapScreen, page: () => const MindMapScreen()),
    GetPage(name: levelsScreen, page: () => const LevelsScreen()),
    GetPage(
        name: lessonsScreen,
        page: () => const LessonScreen(),
        binding: LessonBinding()),
    GetPage(
      name: memoryTricksScreen,
      page: () => const MemoryTrickScreen(),
    )
  ];
}
