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
        appBar: AppBar(title: Text("Başlık")),
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
        child: Column(children: [
          const LoginScreenTopImage(),
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
    return Row(
      children: [
        const LoginScreenTopImage(),
        SecurityPageViewer(),
      ],
    );
  }
}
