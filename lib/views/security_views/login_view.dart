import 'package:flutter/material.dart';
import 'package:note_with/views/base_views/responsive.dart';
import 'components/login_register_form.dart';
import 'components/login_screen_top_image.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Responsive(
        desktop: LoginDesktop(),
        mobile: LoginMobil(),
      )),
    );
  }
}

class LoginMobil extends StatelessWidget {
  const LoginMobil({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Expanded(flex: 1, child: LoginScreenTopImage()),
        Expanded(flex: 2, child: Center(child: LoginRegisterForm())),
      ],
    );
  }
}

class LoginDesktop extends StatelessWidget {
  const LoginDesktop({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(flex: 1, child: Center(child: LoginScreenTopImage())),
        Expanded(flex: 2, child: Center(child: LoginRegisterForm())),
      ],
    );
  }
}
