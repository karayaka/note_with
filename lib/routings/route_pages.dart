import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:note_with/routings/route_couns.dart';

import '../datas/bindings/security_binding.dart';
import '../views/security_views/security_view.dart';

class RoutePages {
  static final pages = [
    GetPage(
      name: RouteConst.security,
      page: () => SecurityView(),
      binding: SecurityBinding(),
    ),
  ];
}
