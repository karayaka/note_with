import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../datas/controllers/security_controller.dart';
import 'login_form.dart';

class SecurityPageViewer extends StatelessWidget {
  SecurityPageViewer({super.key});
  var ctrl = Get.find<SecurityController>();
  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: ctrl.pageController,
      onPageChanged: ctrl.onTapChange,
      children: [
        LoginForm(),
      ],
    );
  }
}
