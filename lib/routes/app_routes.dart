import '../presentation/affiliate_url_screen/affiliate_url_screen.dart';
import '../presentation/affiliate_url_screen/binding/affiliate_url_binding.dart';

import 'package:get/get.dart';

class AppRoutes {
  static const String affiliateUrlScreen = '/affiliate_url_screen';

  static const String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: affiliateUrlScreen,
      page: () => AffiliateUrlScreen(),
      bindings: [
        AffiliateUrlBinding(),
      ],
    ),
    GetPage(
      name: initialRoute,
      page: () => AffiliateUrlScreen(),
      bindings: [
        AffiliateUrlBinding(),
      ],
    )
  ];
}
