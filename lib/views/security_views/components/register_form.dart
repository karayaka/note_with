import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterForm extends StatelessWidget {
  RegisterForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
        child: SingleChildScrollView(
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextFormField(
              decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.person_outline_outlined),
                  labelText: "email".tr,
                  border: const OutlineInputBorder()),
              onChanged: (value) => {},
            ),
            const SizedBox(
              height: 10,
            ),
            TextFormField(
              decoration: InputDecoration(
                  labelText: "isim".tr,
                  prefixIcon: const Icon(Icons.person_outline_outlined),
                  border: const OutlineInputBorder()),
              onChanged: (value) => {},
            ),
            const SizedBox(
              height: 10,
            ),
            TextFormField(
              decoration: InputDecoration(
                  labelText: "soyisim".tr,
                  prefixIcon: const Icon(Icons.person_outline_outlined),
                  border: const OutlineInputBorder()),
              onChanged: (value) => {},
            ),
            const SizedBox(
              height: 10,
            ),
            TextFormField(
              decoration: InputDecoration(
                  labelText: "password".tr,
                  prefixIcon: const Icon(Icons.person_outline_outlined),
                  border: const OutlineInputBorder()),
              onChanged: (value) => {},
            ),
            const SizedBox(
              height: 10,
            ),
            TextFormField(
              decoration: InputDecoration(
                  labelText: "re_password".tr,
                  prefixIcon: const Icon(Icons.person_outline_outlined),
                  border: const OutlineInputBorder()),
              onChanged: (value) => {},
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Expanded(
                    child: ElevatedButton(
                        onPressed: () => {}, child: Text("kaydet".tr))),
              ],
            )
          ]),
    ));
  }
}
