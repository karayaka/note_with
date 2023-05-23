import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:note_with/views/security_views/components/login_screen_top_image.dart';
import '../../datas/controllers/security_controller.dart';
import '../base_views/responsive.dart';
import 'components/security_page_viewer.dart';

class SecurityView extends StatelessWidget {
  SecurityView({super.key});
  var ctrl = Get.find<SecurityController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Obx(() => Text(ctrl.title.value.toUpperCase()))),
        body: Responsive(
          mobile: SecurityMobil(),
          desktop: SecurityDesktop(),
        ));
  }
}

class SecurityMobil extends StatelessWidget {
  const SecurityMobil({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 650,
        width: 480,
        child: Column(children: [
          LoginScreenTopImage(),
          SecurityPageViewer(),
        ]),
      ),
    );
  }
}

class SecurityDesktop extends StatelessWidget {
  const SecurityDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: 900,
        width: 900,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(child: LoginScreenTopImage()),
            SecurityPageViewer(),
          ],
        ),
      ),
    );
  }
}
