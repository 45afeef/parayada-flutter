import 'package:get/get.dart';

import '../controller/affiliate_url_controller.dart';

class AffiliateUrlBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AffiliateUrlController());
  }
}