import 'package:flutter/material.dart';

class LoginForm extends StatelessWidget {
  LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
        child: SingleChildScrollView(
      child: Column(children: [
        TextFormField(
          decoration: InputDecoration(
              label: Text("Email"),
              prefixIcon: Icon(Icons.person_outline_outlined),
              labelText: "Email",
              border: OutlineInputBorder()),
          onChanged: (value) => {},
        ),
        SizedBox(
          height: 20,
        ),
        TextFormField(
          decoration: InputDecoration(
              label: Text("Password"),
              prefixIcon: Icon(Icons.person_outline_outlined),
              labelText: "Password",
              border: OutlineInputBorder()),
          onChanged: (value) => {},
        ),
      ]),
    ));
  }
}
