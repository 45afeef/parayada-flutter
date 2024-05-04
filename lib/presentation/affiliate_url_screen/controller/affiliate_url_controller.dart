import 'package:flutter/material.dart';

import '../../../core/app_export.dart';
import '../models/affiliate_url_model.dart';

class AffiliateUrlController extends GetxController {
  TextEditingController group9694Controller = TextEditingController();

  Rx<AffiliateUrlModel> affiliateUrlModelObj = AffiliateUrlModel().obs;

  @override
  void onClose() {
    super.onClose();
    group9694Controller.dispose();
  }
}