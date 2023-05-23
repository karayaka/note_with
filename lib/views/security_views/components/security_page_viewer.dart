import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:note_with/views/security_views/components/register_form.dart';
import '../../../datas/controllers/security_controller.dart';
import 'login_form.dart';

class SecurityPageViewer extends StatelessWidget {
  SecurityPageViewer({super.key});
  var ctrl = Get.find<SecurityController>();
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: PageView(
        controller: ctrl.pageController,
        onPageChanged: ctrl.onTapChange,
        children: [RegisterForm()],
      ),
    );
  }
}
