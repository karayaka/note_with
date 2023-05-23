import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:note_with/datas/controllers/security_controller.dart';

class LoginScreenTopImage extends StatelessWidget {
  LoginScreenTopImage({
    Key? key,
  }) : super(key: key);
  var ctrl = Get.find<SecurityController>();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 1,
          child: Obx(() => Text(
                ctrl.title.value.toUpperCase(),
                style: const TextStyle(fontWeight: FontWeight.bold),
              )),
        ),
        Expanded(
          flex: 8,
          child: SvgPicture.asset(
            "assets/icons/login.svg",
            width: 100,
            height: 100,
          ),
        ),
        SizedBox(height: 32),
      ],
    );
  }
}
