import 'package:get/get.dart';

import '../presentation/affiliate_url_screen/affiliate_url_screen.dart';
import '../presentation/affiliate_url_screen/binding/affiliate_url_binding.dart';
import '../presentation/levels/levels_screen.dart';
import '../presentation/mind_map/mind_map_screen.dart';

class AppRoutes {
  static const String affiliateUrlScreen = '/affiliate_url_screen';

  static const String mindMapScreen = '/mindmap';

  static const String levelsScreen = '/levels';

  static const String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: affiliateUrlScreen,
      page: () => const AffiliateUrlScreen(),
      bindings: [
        AffiliateUrlBinding(),
      ],
    ),
    GetPage(name: initialRoute, page: () => const LevelsScreen()),
    GetPage(name: mindMapScreen, page: () => const MindMapScreen()),
    GetPage(name: levelsScreen, page: () => const LevelsScreen())
  ];
}
