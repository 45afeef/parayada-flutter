import 'package:get/get.dart';

import 'affiliateurl_item_model.dart';

class AffiliateUrlModel {
  Rx<List<AffiliateurlItemModel>> affiliateurlItemList =
      Rx(List.generate(4, (index) => AffiliateurlItemModel()));
}
