import 'package:get/get.dart';

import '../features/affiliate_url_screen/affiliate_url_screen.dart';
import '../features/affiliate_url_screen/binding/affiliate_url_binding.dart';
import '../features/content/presentation/assessment/application/assessment_binding.dart';
import '../features/content/presentation/assessment/presentation/assessment_screen.dart';
import '../features/content/presentation/memorizing/presentation/pages/memory_tricks_screen.dart';
import '../features/lesson/application/lesson_binding.dart';
import '../features/lesson/presentation/pages/lesson_screen.dart';
import '../features/levels/levels_screen.dart';
import '../features/mind_map/mind_map_screen.dart';
import '../features/onboarding/onboarding_screen.dart';

class AppRoutes {
  static const String affiliateUrlScreen = '/affiliate_url_screen';

  static const String homeScreen = '/';

  static const String mindMapScreen = '/mindmap';

  static const String levelsScreen = '/levels';

  static const String lessonsScreen = '/lessons';

  static const String assessmentScreen = '/assessment';

  static const String memoryTricksScreen = '/memory-trick';

  static const String onboardingScreen = '/onboarding';

  static List<GetPage> pages = [
    GetPage(
        name: affiliateUrlScreen,
        page: () => const AffiliateUrlScreen(),
        bindings: [
          AffiliateUrlBinding(),
        ]),
    GetPage(name: homeScreen, page: () => const LevelsScreen()),
    GetPage(name: onboardingScreen, page: () => const OnboardingScreen()),
    GetPage(name: mindMapScreen, page: () => const MindMapScreen()),
    GetPage(name: levelsScreen, page: () => const LevelsScreen()),
    GetPage(
      name: lessonsScreen,
      page: () => const LessonScreen(),
      binding: LessonBinding(),
    ),
    GetPage(
      name: assessmentScreen,
      page: () => const AssessmentScreen(),
      binding: AssessmentBinding(),
    ),
    GetPage(
      name: memoryTricksScreen,
      page: () => const MemoryTrickScreen(),
    )
  ];
}
