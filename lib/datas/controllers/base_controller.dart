import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BaseController extends GetxController {
  int pageCount = 0;
  int pageSize = 0;

  showConfirmeDialog(void Function()? onConfirme,
      {String title = "", String message = "", String confirmeText = "Tamam"}) {
    Get.defaultDialog(
        title: title,
        content: Text(message),
        onConfirm: onConfirme,
        textCancel: "İptal",
        textConfirm: confirmeText,
        confirmTextColor: Colors.white);
  }

  succesMessage(String message) {
    Get.snackbar(
      "Başarılı",
      message,
      colorText: Colors.white,
      backgroundColor: Colors.green,
    );
  }

  errorMessage(String message) {
    Get.snackbar(
      "Hata",
      message,
      colorText: Colors.white,
      backgroundColor: Colors.orange.shade600,
    );
  }

  warningMessage(String message) {
    Get.snackbar(
      "Uyarı",
      message,
      colorText: Colors.white,
      backgroundColor: Colors.red,
    );
  }
//service apileri yazılacaks
}
