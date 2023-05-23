import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:note_with/datas/controllers/base_controller.dart';

class SecurityController extends BaseController {
  @override
  void onInit() {
    pageController = PageController(initialPage: 0, keepPage: false);
    title.value = titles[0];
    super.onInit();
  }

  var title = "".obs;
  late PageController pageController;

  var titles = ["giris_yap".tr, "kayit_ol".tr, "sifremi_unuttum".tr];

  onTapChange(int index) {
    title.value = titles[index];
  }

  jumpToPage(int i) {
    pageController.jumpToPage(i);
  }
}
