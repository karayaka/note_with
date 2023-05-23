import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:note_with/datas/controllers/security_controller.dart';

class LoginForm extends StatelessWidget {
  LoginForm({super.key});
  var ctrl = Get.find<SecurityController>();
  @override
  Widget build(BuildContext context) {
    return Form(
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
                labelText: "password".tr,
                prefixIcon: const Icon(Icons.person_outline_outlined),
                border: const OutlineInputBorder()),
            onChanged: (value) => {},
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(onPressed: () => {}, child: Text("sifremi_unuttum".tr))
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Expanded(
                  child: ElevatedButton(
                      onPressed: () => {}, child: Text("giris_yap".tr))),
              const SizedBox(
                width: 10,
              ),
              Expanded(
                  child: OutlinedButton(
                      onPressed: () => {
                            ctrl.jumpToPage(1),
                          },
                      child: Text("kayit_ol".tr))),
            ],
          )
        ]));
  }
}
