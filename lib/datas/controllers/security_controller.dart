import 'package:flutter/material.dart';
import 'package:note_with/datas/controllers/base_controller.dart';

class SecurityController extends BaseController {
  @override
  void onInit() {
    pageController = PageController(initialPage: 0, keepPage: false);

    super.onInit();
  }

  late PageController pageController;

  onTapChange(int index) {}

  jumpToPage(int i) {
    pageController.jumpToPage(i);
  }
}
