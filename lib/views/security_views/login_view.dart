import 'package:flutter/material.dart';
import 'package:note_with/views/base_views/responsive.dart';
import 'components/login_register_form.dart';

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
    return LoginRegisterForm();
  }
}

class LoginDesktop extends StatelessWidget {
  const LoginDesktop({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center();
  }
}
