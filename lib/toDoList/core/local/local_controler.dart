import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:matcher/matcher.dart';

import '../../../main.dart';

class LocalControler extends GetxController {
  Locale initilang = sherpref!.getString('lang') == null
      ? Get.deviceLocale!
      : Locale(sherpref!.getString('lang')!);

  void changlang(String codelang) {
    Locale local = Locale(codelang);
    sherpref!.setString('lang', codelang);
    Get.updateLocale(local);
  }
}
