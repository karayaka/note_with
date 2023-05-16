import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginScreenTopImage extends StatelessWidget {
  const LoginScreenTopImage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Expanded(
          flex: 1,
          child: Text(
            "LOGIN",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        Expanded(
          flex: 8,
          child: SvgPicture.asset(
            "assets/icons/login.svg",
            width: 150,
            height: 150,
          ),
        ),
        SizedBox(height: 32),
      ],
    );
  }
}
