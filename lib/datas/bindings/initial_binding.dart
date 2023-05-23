import 'package:get/get.dart';
import 'package:note_with/datas/controllers/security_controller.dart';

class InitialBinding extends Bindings {
  @override
  void dependencies() {
    Get.create(() => SecurityController());
  }
}
